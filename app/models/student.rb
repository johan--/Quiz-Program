class Student < ActiveRecord::Base
	has_and_belongs_to_many :subjects
	has_and_belongs_to_many :instructors
	has_many :quiz_marks
	has_many :numerical_answers
	has_many :mcq_answers
	has_many :true_or_false_answers
end
