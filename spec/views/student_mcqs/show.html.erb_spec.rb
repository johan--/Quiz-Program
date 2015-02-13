require 'rails_helper'

RSpec.describe "student_mcqs/show", type: :view do
  before(:each) do
    @student_mcq = assign(:student_mcq, StudentMcq.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
