

require 'rails_helper'

RSpec.describe StudentTrueOrFalseQuestion, :type => :model do



 	it { should belong_to(:student) }
 	it { should belong_to(:true_or_false_question) }



	describe "student answer" do
	it {should validate_presence_of(:student_answer)}
end








end