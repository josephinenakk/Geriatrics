class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :prescription
      t.string :currently_Taking
      t.string :name_Of_Medication
      t.string :dosage
      t.string :frequency
      t.string :prescrbing_Physician
      t.string :special_Instruvtions
      t.string :pharmacy
      t.string :medication_Photo

      t.timestamps
    end
  end
end
