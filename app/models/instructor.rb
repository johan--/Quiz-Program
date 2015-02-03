class Instructor < ActiveRecord::Base
	has_and_belongs_to_many :students
	has_many :subjects
	has_many :quizzes
	
end
