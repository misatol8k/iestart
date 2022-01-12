class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.integer :type
      t.string :url
      t.string :name
      t.string :other
      t.string :trader
      t.integer :price

      t.timestamps
    end
  end
end
