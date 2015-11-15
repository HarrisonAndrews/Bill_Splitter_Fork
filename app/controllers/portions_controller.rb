class PortionsController < ApplicationController
  def create
    @portion = Portion.new(bill_id: params[:bill_id],
                     roommate_id: params[:roommate_id],
                     amount: params[:amount],
                     percentage: params[:percentage],
                      due_date: params[:due_date])
    if @portion.save
      render "create.json.jbuilder", status: :created
    else
      render json: { errors: @portion.errors.full_messages},
             status: :unprocessable_entity
    end
  end

  def index
    @portions = Portion.all
    render "index.json.jbuilder", status: :accepted
  end

  def show
    @portion = Portion.find(params[:id])
    render "show.json.jbuilder", status: :accepted
  end

  def update
    @portion = Portion.find(params[:id])
    @bill_amount = Bill.find(params[:bill_id]).amount
    if current_user.id == @portion.user_id
      @portion.update(bill_id: params[:bill_id],
                   roommate_id: params[:roommate_id],
                   amount: params[:amount],
                   percentage: @bill_amount / params[:amount],
                    due_date: params[:due_date])
      render json: {success: "Portion: #{@portion.bill_id}"}, status: :accepted
    else
      render json: { error: "Unable to edit the portion." },
             status: :unauthorized
    end
  end

  def delete
    @portion = Portion.find(params[:id])
    if current_user.id == @portion.user_id
      @bill.destroy
      render json: {success: "Bill delete successful."}, status: :accepted
    else
      render json: { error: "Unable to delete the bill." },
             status: :unauthorized
    end
  end
end
