class McqsController < ApplicationController\
   
	def create
		params[mcq:].each do |mcq1|
   			Mcq.create(question_mark: mcq1[:question_mark], 
   				       answer: mcq1[:answer],
   				       choices0 => mcq1[:choices][0],
   				       choices1 => mcq1[:choices][1],
   				       choices2 => mcq1[:choices][2],
   				       choices3 => mcq1[:choices][3],
   				       quiz_id: quiz_id,
   				       question_statement: mcq1[:question_statement])
   			redirect_to :back
	end






end
