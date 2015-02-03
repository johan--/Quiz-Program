class NumericalQuestion < ActiveRecord::Base
	belongs_to :quiz
	has_many :numerical_answers
end
