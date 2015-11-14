class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :house_id
      t.string :title
      t.integer :amount
      t.date :due_date

      t.timestamps null: false
    end
  end
end
