class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :auth_token
      t.string :password_digest
      t.string :email
      t.string :address

      t.timestamps null: false
    end
  end
end
