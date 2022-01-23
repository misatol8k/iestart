class AddColumnsToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :newly_built_house, :integer, null: false
    add_column :properties, :used_house, :integer, null: false
    add_column :properties, :newly_built_condominium, :integer, null: false
    add_column :properties, :used_condominium, :integer, null: false
    add_column :properties, :land, :integer, null: false
    add_column :properties, :price_and_pepayment, :integer, null: false
    add_column :properties, :building_and_structure, :integer, null: false
    add_column :properties, :floor_plan, :integer, null: false
    add_column :properties, :surrounding_environment, :integer, null: false
    add_column :properties, :family_relatives, :integer, null: false
    add_column :properties, :other_point, :integer, null: false    
  end
end
