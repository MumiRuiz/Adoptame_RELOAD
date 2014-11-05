class Pet < ActiveRecord::Base
	has_many :adoptions
	has_many :institutions
	has_many :users, through: :adoptions
end
