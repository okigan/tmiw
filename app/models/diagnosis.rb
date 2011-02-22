class Diagnosis < ActiveRecord::Base
	has_many :treatments
end
