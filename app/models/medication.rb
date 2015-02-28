class Medication < ActiveRecord::Base
  belongs_to :user
  belongs_to :profile_medications
  belongs_to :profiles, through: :profile_medications  
end
