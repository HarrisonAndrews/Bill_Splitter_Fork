class AddAndRemoveColumnsFromRoommates < ActiveRecord::Migration
  def change
    remove_column :roommates, :house_id, :integer
    remove_column :roommates, :treasurer, :boolean
    remove_column :roommates, :password_digest, :string
    remove_column :roommates, :auth_token, :string
    add_column :roommates, :user_id, :integer
  end
end
