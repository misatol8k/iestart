class AddIntroducerToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :introducer, :string
  end
end
