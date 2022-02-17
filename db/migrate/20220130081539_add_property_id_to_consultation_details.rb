class AddPropertyIdToConsultationDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :consultation_details, :property_id, :integer
  end
end
