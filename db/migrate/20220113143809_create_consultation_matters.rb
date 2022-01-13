class CreateConsultationMatters < ActiveRecord::Migration[6.0]
  def change
    create_table :consultation_matters do |t|
      t.string :item, null: false

      t.timestamps
    end
  end
end
