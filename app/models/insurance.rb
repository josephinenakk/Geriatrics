class Insurance < ActiveRecord::Base
  attr_accessible :account_Holders, :account_No, :account_Type, :beneficiary, :document, :institution_Information, :insurance_Card
end
