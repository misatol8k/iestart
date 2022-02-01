class AddComentToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :price_and_pepayment_coment, :text
    add_column :properties, :building_and_structure_coment, :text
    add_column :properties, :floor_plan_coment, :text
    add_column :properties, :surrounding_environment_coment, :text
    add_column :properties, :family_relatives_coment, :text
    add_column :properties, :other_point_coment, :text
  end
end
