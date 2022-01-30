class AddSpecialistIdToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :specialist_id, :integer
  end
end
