class BillsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy, :update]

  def create
    @bill = Bill.new(title: params[:title],
                     amount: params[:amount],
                      due_date: params[:due_date],
                      user_id: params[:user_id])
    if @bill.save
      render "create.json.jbuilder", status: :created
    else
      render json: { errors: @bill.errors.full_messages},
             status: :unprocessable_entity
    end
  end

  def index
    @bills = Bill.all
    render "index.json.jbuilder", status: :accepted
  end

  def show
    @bill = Bill.find(params[:id])
    render "show.json.jbuilder", status: :accepted
  end

  def update
    @bill = Bill.find(params[:id])
    if current_user.user_id == @bill.user_id
      @bill.update(title: params[:title],
                    amount: params[:amount],
                    due_date: params[:due_date],
                    user_id: params[:user_id])
      render "show.json.jbuilder", status: :accepted
    else
      render json: { error: "Unable to edit the bill." },
             status: :unauthorized
    end
  end

  def destroy
    @bill = Bill.find_by(:id)
    if current_user.id == @bill.user_id
      @bill.destroy
      render json: {success: "Bill delete successful."}, status: :accepted
    else
      render json: { error: "Unable to delete the bill." },
             status: :unauthorized
    end
  end

end