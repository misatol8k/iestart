class RemoveStringFromSpecialists < ActiveRecord::Migration[6.0]
  def change
    remove_column :specialists, :string, :string
  end
end
