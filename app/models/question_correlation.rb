class QuestionCorrelation < ActiveRecord::Base
	belongs_to :question
	belongs_to :followup_question, :class_name => "Question", :foreign_key => "followup_question_id"
end
