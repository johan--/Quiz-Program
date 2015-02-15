require 'rails_helper'

RSpec.describe Admin, :type => :model do

describe "Name" do
	it {should validate_presence_of(:name)}
end

describe "Gender" do
	it {should validate_presence_of(:gender)}
end

end