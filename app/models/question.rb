class Question < ActiveRecord::Base
	has_many :answers
	has_many :question_correlations
	
	has_many :followup_questions, :through => :question_correlations, :source => :followup_question
end
