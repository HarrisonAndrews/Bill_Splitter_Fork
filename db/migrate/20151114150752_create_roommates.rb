class CreateRoommates < ActiveRecord::Migration
  def change
    create_table :roommates do |t|
      t.integer :house_id
      t.boolean :treasurer
      t.string :name
      t.string :email
      t.integer :phone

      t.timestamps null: false
    end
  end
end
