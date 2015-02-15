

require 'rails_helper'

RSpec.describe Quiz, :type => :model do



 	it { should belong_to(:subject) }
  	it { should belong_to(:instructor) }


	it { should have_many(:student_quizzes) }
	it { should have_many(:numerical_questions) }
	it { should have_many(:true_or_false_questions) }
	it { should have_many(:mcqs) }
	it { should have_many(:text_sentences) }


  	it {should have_many(:students).through(:student_quizzes)}







  	describe "quiz mark" do
	it {should validate_presence_of(:quiz_mark)}
	it {should validate_numericality_of(:quiz_mark)}
end


  	describe "quiz duration" do
	it {should validate_presence_of(:duration)}
	it {should validate_numericality_of(:duration)}
end


end