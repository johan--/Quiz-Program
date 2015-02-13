require "rails_helper"

RSpec.describe StudentMcqsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/student_mcqs").to route_to("student_mcqs#index")
    end

    it "routes to #new" do
      expect(:get => "/student_mcqs/new").to route_to("student_mcqs#new")
    end

    it "routes to #show" do
      expect(:get => "/student_mcqs/1").to route_to("student_mcqs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/student_mcqs/1/edit").to route_to("student_mcqs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/student_mcqs").to route_to("student_mcqs#create")
    end

    it "routes to #update" do
      expect(:put => "/student_mcqs/1").to route_to("student_mcqs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/student_mcqs/1").to route_to("student_mcqs#destroy", :id => "1")
    end

  end
end
