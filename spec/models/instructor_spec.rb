require 'rails_helper'

RSpec.describe Instructor, :type => :model do



  it { should have_and_belong_to_many(:students) }
    it { should have_many(:subjects) }
  it { should have_many(:quizzes) }




describe "Name" do
	it {should validate_presence_of(:name)}
end

describe "Gender" do
	it {should validate_presence_of(:gender)}
end

end