class BillsController < ApplicationController

  def create
    @bill = current_user.bills.create(bill_params)
    render :show
  end

  def show
    @bill = Bill.find(params[:id])
    render :show
  end

  def update
    @bill = Bill.find(params[:id])
    @bill.update(bill_params)
    render :show
  end

  def delete
    @bill = Bill.find(params[:id])
    @bill.destroy
    render :delete
  end

  private
  def bill_params
    allow = [
        :amount,
        :due_date,
        :user_id,
        :title
       ]
    params.permit(allow)
  end

end