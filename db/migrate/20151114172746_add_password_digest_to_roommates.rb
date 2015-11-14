class AddPasswordDigestToRoommates < ActiveRecord::Migration
  def change
    add_column :roommates, :password_digest, :string
    add_column :roommates, :auth_token, :string
  end
end
