class CreatePropertyLists < ActiveRecord::Migration[6.0]
  def change
    create_table :property_lists do |t|
      t.string :property_type, null: false

      t.timestamps
    end
  end
end
