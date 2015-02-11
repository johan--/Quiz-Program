class McqsController < ApplicationController\
   
	def create
      #quiz_id1= el quiz_id beta3et a5er quiz lel current_instructor.... i dont know how to write it
		params[mcq:].each do |mcq1|
   			Mcq.create(question_mark: mcq1[:question_mark], 
   				       answer: mcq1[:answer],
   				       choices1:  mcq1[:choices][0],
   				       choices2:  mcq1[:choices][1],
   				       choices3:  mcq1[:choices][2],
   				       choices4:  mcq1[:choices][3],
                      #LOOOK HEEEERE
   				       quiz_id: mcq1[:quiz_id],        # DIH ME7ATAGA TA3DEEEEEEEEEELLLL
   				       question: mcq1[:question])
   			redirect_to :back
	end






end
