class UsersController < ApplicationController

	def login
		
		email = params[:email]
		password = params[:password]

		if student1 = Student.find_by_email(email) and student1.password == password

			@student1 = student1


		respond_to do |format|	
			format.json 
		end	

		elsif instructor1 = Instructor.find_by_email(email) and instructor1.password == password
            
			@display =  " instructor login "

            respond_to do |format|
                format.json {render json: instructor1}
			end


		else
			@display =  "wrong email or password"
		end
	end

end