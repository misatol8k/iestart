class AddCustomerRefToProperties < ActiveRecord::Migration[6.0]
  def change
    add_reference :properties, :customer, foreign_key: true
  end
end
