
require 'rails_helper'

RSpec.describe TrueOrFalseQuestion, :type => :model do


 	it { should belong_to(:quiz) }
	it { should have_many(:student_true_or_false_questions) }
  	it {should have_many(:students).through(:student_true_or_false_questions)}



	describe "true or false question" do
	it {should validate_presence_of(:question)}
end


	describe "student seat number" do
	it {should validate_presence_of(:question_mark)}
	it {should validate_numericality_of(:question_mark).only_integer}
end



	describe "question answer" do
	it {should validate_presence_of(:answer)}
end






end