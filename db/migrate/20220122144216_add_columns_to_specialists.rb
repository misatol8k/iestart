class AddColumnsToSpecialists < ActiveRecord::Migration[6.0]
  def change
      add_column :specialists, :newly_built_house, :integer, null: false, default: 1
      add_column :specialists, :used_house, :integer, null: false, default: 1
      add_column :specialists, :newly_built_condominium, :integer, null: false, default: 1
      add_column :specialists, :used_condominium, :integer, null: false, default: 1
      add_column :specialists, :land, :integer, null: false, default: 1
      add_column :specialists, :price_and_pepayment, :integer, null: false, default: 1
      add_column :specialists, :building_and_structure, :integer, null: false, default: 1
      add_column :specialists, :floor_plan, :integer, null: false, default: 1
      add_column :specialists, :surrounding_environment, :integer, null: false, default: 1
      add_column :specialists, :family_relatives, :integer, null: false, default: 1
      add_column :specialists, :other_point, :integer, null: false, default: 1
  end
end
