

require 'rails_helper'

RSpec.describe Subject, :type => :model do


 	it { should belong_to(:instructor) }
	it { should have_many(:quizzes) }
  	it { should have_and_belong_to_many(:students) }




  	describe "course code" do
	it {should validate_presence_of(:course_code)}
end

describe "subject" do
	it {should validate_presence_of(:subject)}
end


describe "studying year" do
	it {should validate_presence_of(:studying_year)}
end



end