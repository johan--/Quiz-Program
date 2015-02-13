require 'rails_helper'

RSpec.describe "student_mcqs/index", type: :view do
  before(:each) do
    assign(:student_mcqs, [
      StudentMcq.create!(),
      StudentMcq.create!()
    ])
  end

  it "renders a list of student_mcqs" do
    render
  end
end
