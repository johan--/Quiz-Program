
require 'rails_helper'

RSpec.describe StudentQuiz, :type => :model do


 	it { should belong_to(:student) }
 	it { should belong_to(:quiz) }


end