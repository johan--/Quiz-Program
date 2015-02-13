class StudentNumericalQuestion < ActiveRecord::Base

    ######################## Relations ########################

belongs_to :student
belongs_to :numerical_question


validates :answer,
		  :presence => true

		 validates :question 
		 presence: true

		 validates :question_mark
		 	:numericality => {:only_integer => true}

		 	

end
