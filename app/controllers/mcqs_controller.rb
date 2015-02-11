class McqsController < ApplicationController\
   
	def create
      
		params[mcq:].each do |mcq1|
   			Mcq.create(question_mark: mcq1[:question_mark], 
   				       answer: mcq1[:answer],
   				       choices1:  mcq1[:choices][0],
   				       choices2:  mcq1[:choices][1],
   				       choices3:  mcq1[:choices][2],
   				       choices4:  mcq1[:choices][3],
   				       quiz_id: quiz1.id,
   				       question_statement: mcq1[:question_statement])
         end

   			redirect_to controller: "QuizzesController", action: "set_fullmark", quiz1
	end






end
