class ChangeDataTypeInPortionsTable < ActiveRecord::Migration
  def change
    remove_column :portions, :percentage, :integer
    add_column :portions, :percentage, :float
  end
end
