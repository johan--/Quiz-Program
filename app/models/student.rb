class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable, :token_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

	has_and_belongs_to_many :subjects
	has_and_belongs_to_many :instructors
	has_many :quiz_marks
	has_many :numerical_answers
	has_many :mcq_answers
	has_many :true_or_false_answers
end
