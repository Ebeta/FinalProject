class ProfileMedication < ActiveRecord::Base
  belongs_to :profile
  belongs_to :medication
end
