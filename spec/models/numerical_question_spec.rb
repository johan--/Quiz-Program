

require 'rails_helper'

RSpec.describe NumericalQuestion, :type => :model do



 it { should belong_to(:quiz) }
	it { should have_many(:student_numerical_questions) }
  	it {should have_many(:students).through(:student_numerical_questions)}







  	describe "Question Answer" do
	it {should validate_presence_of(:answer)}
	it {should validate_numericality_of(:answer)}
end



end