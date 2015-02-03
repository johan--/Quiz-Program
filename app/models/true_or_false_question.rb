class TrueOrFalseQuestion < ActiveRecord::Base
	belongs_to :quiz
	has_many :true_or_false_answers
end
