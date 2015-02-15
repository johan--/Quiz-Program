class StudentTrueOrFalseQuestion < ActiveRecord::Base

	 ######################## Relations ########################

	belongs_to :student
	belongs_to :true_or_false_question


    validates :student_answer, 
    			:presence => true

end
