class McqAnswersController < ApplicationController

	def create


		params[:answers].each do |x|
			McqAnswer.create(quiz_id: params[:quiz_id] )



	end






end
