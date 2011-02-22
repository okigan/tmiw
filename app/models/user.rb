class User < ActiveRecord::Base
	has_many :answers
	
	has_many :answered_questions, :through => :answers, :source => :question
end
