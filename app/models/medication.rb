class Medication < ActiveRecord::Base
  attr_accessible :currently_Taking, :dosage, :frequency, :medication_Photo, :name_Of_Medication, :pharmacy, :prescrbing_Physician, :prescription, :special_Instruvtions
end
