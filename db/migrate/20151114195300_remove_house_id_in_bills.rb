class RemoveHouseIdInBills < ActiveRecord::Migration
  def change
    remove_column :bills, :house_id, :integer
  end
end

