class NumericalQuestion < ActiveRecord::Base

    ######################## Relations ########################
	
	belongs_to :quiz

	has_many :student_numerical_questions
	has_many :students, through: :student_numerical_questions


    validates  :answer, 
    		   :presence => true,
    		   :numericality => true
    				   
end
