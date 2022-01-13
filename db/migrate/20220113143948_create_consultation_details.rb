class CreateConsultationDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :consultation_details do |t|
      t.text :content

      t.timestamps
    end
  end
end
