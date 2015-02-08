class QuizController < ApplicationController


	def create
   		quiz1 = Quiz.create(
   			  time_to_solve_the_quiz: params[:time_to_solve_the_quiz],
   			  time_to_be_published: params[:time_to_be_published],
   			  instructor_id: current_instructor.id,
   			  subject_id: params[:subject_id])

   		redirect_to controller: "McqsController", action: "create"
		quiz1.set_quiz_full_mark
	end
end
