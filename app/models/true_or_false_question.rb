class TrueOrFalseQuestion < ActiveRecord::Base

	    ######################## Relations ########################

	belongs_to :quiz

	has_many :student_true_or_false_questions
	has_many :students, through: :student_true_or_false_questions
	
end
