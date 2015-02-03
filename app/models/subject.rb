class Subject < ActiveRecord::Base
	has_many :quizzes
	has_and_belongs_to_many :students
	belongs_to :instructor
end
