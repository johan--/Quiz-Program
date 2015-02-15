class StudentNumericalQuestion < ActiveRecord::Base

    ######################## Relations ########################

belongs_to :student
belongs_to :numerical_question


validates :student_answer,
		  :presence => true,
		 	:numericality => {:only_integer => true}

	

end
