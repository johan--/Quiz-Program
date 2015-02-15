

require 'rails_helper'

RSpec.describe Mcq, :type => :model do

    it { should belong_to(:quiz) }
	it { should have_many(:student_mcqs) }
  	it {should have_many(:students).through(:student_mcqs)}


  	describe "Question Mark" do
	it {should validate_presence_of(:question_mark)}
	it {should validate_numericality_of(:question_mark).only_integer}
end

describe "the discounted mark of using a hint" do
	it {should validate_numericality_of(:hint_discounted_mark).only_integer}
end

describe "the answer of the question" do
	it {should validate_presence_of(:answer)}
end

describe "question" do
	it {should validate_presence_of(:question)}
end
describe "choice 1" do
	it {should validate_presence_of(:choice1)}
end
describe "choice 2" do
	it {should validate_presence_of(:choice2)}
end
describe "choice 3" do
	it {should validate_presence_of(:choice3)}
end

describe "choice 4" do
	it {should validate_presence_of(:choice4)}
end
end