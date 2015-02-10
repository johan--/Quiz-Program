class StudentNumericalQuestion < ActiveRecord::Base

    ######################## Relations ########################

belongs_to :student
belongs_to :numerical_question


validates :answer,
		  :presence => true


end
