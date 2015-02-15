


require 'rails_helper'

RSpec.describe StudentNumericalQuestion, :type => :model do

 	it { should belong_to(:student) }
 	it { should belong_to(:numerical_question) }

	describe "student numerical question answer" do
	it {should validate_presence_of(:student_answer)}
		it {should validate_numericality_of(:student_answer).only_integer}

end


end