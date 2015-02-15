


require 'rails_helper'

RSpec.describe TextSentence, :type => :model do


 	it { should belong_to(:quiz) }




	describe "the text sentence" do
	it {should validate_presence_of(:text_sentence)}
end


end