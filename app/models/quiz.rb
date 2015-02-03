class Quiz < ActiveRecord::Base
	belongs_to :subject
	belongs_to :instructor
	has_many :quiz_marks
	has_many :numerical_questions
	has_many :true_or_false_questions
	has_many :mcqs
	has_many :text_sentences
end
