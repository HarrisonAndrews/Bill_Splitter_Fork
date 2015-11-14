class BillsController < ApplicationController

  def create
    @bill = current_user.bills.create(bill_params)

    render :show
  end

  def show
    @bill = Bill.find_by_id
    render :show
  end

  def update
    @bill = Bill.find_by_id
    @bill.update(bill_params)
    render :show
  end

  def delete
    @bill = Bill.find_by_id
    @bill.destroy
    render :delete
  end

  private
  def bill_params
    allow = [
        :amount,
        :due_date
    ]
    params.permit(allow)
  end

end