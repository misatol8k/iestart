class RenameTypeColumnToProperty < ActiveRecord::Migration[6.0]
  def change
    rename_column :property, :type, :property_type
  end
end
