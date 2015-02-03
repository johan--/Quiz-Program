class Mcq < ActiveRecord::Base
	belongs_to :quiz
	has_many :mcq_answers
end
