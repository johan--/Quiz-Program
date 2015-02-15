require 'rails_helper'

RSpec.describe StudentMcq, type: :model do


 	it { should belong_to(:student) }
 	it { should belong_to(:mcq) }




end
