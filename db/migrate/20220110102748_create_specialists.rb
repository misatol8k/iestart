class CreateSpecialists < ActiveRecord::Migration[6.0]
  def change
    create_table :specialists do |t|
      t.string :name, null: false
      t.string :expertise_property, null: false
      t.string :consultation_item, null: false
      t.string :qualification
      t.text :description
      t.text :career
      t.string :icon
      t.string :string

      t.timestamps
    end
  end
end
