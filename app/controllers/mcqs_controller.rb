class McqsController < ApplicationController
	def create
		params[mcq:].each do |mcq1|
   			Mcq.create(question_mark: mcq1[:question_mark], 
   				       answer: mcq1[:answer],
   				       choices[0] => mcq1[choices][0],
   				       choices[1] => mcq1[choices][1],
   				       choices[2] => mcq1[choices][2],
   				       choices[3] => mcq1[choices][3],
   				       quiz_id: mcq1[:quiz_id],
   				       question_statement: mcq1[:question_statement])
   			redirect_to :back
	end






end
