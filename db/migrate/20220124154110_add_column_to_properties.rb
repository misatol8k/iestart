class AddColumnToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :prefecture_id, :integer
  end
end
