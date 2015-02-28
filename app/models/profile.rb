class Profile < ActiveRecord::Base
	belongs_to :users
	belongs_to :admin_users
	has_many :profile_medications
	has_many :medications, through: :profile_medications
	validates :name, presence:true
	validates :age, numericality: {greater_than_or_equal_to: 0}
	validates :phonenumber, numericality: true, length: {minimum: 10}
	validates :contactnumber, numericality: true, length: {minimum: 10}

end
