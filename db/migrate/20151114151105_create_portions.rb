class CreatePortions < ActiveRecord::Migration
  def change
    create_table :portions do |t|
      t.integer :bill_id
      t.integer :roommate_id
      t.integer :amount
      t.integer :percentage
      t.date :due_date

      t.timestamps null: false
    end
  end
end
