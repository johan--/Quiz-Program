


require 'rails_helper'

RSpec.describe Student, :type => :model do


 	it { should belong_to(:section) }

	it { should have_many(:student_quizzes) }
	it { should have_many(:student_numerical_questions) }
	it { should have_many(:student_mcqs) }
	it { should have_many(:student_quizzes) }

  	it {should have_many(:quizzes).through(:student_quizzes)}
  	it {should have_many(:numerical_questions).through(:student_numerical_questions)}
  	it {should have_many(:mcqs).through(:student_mcqs)}
  	it {should have_many(:true_or_false_questions).through(:student_true_or_false_questions)}


  	it { should have_and_belong_to_many(:subjects) }
  	it { should have_and_belong_to_many(:instructors) }


	describe "expected year of graduation" do
	it {should validate_presence_of(:expected_year_of_graduation)}
	it {should validate_numericality_of(:expected_year_of_graduation).only_integer}
end

	describe "student gender" do
	it {should validate_presence_of(:gender)}
end

	describe "student seat number" do
	it {should validate_presence_of(:seat_number)}
	it {should validate_numericality_of(:seat_number).only_integer}
end

end