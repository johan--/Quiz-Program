class UsersController < ApplicationController

	

def login

    password = "passIns1"
	#email = "cherifSalama@gmail.com"
	#logindata=params
	email = params[:gg]

	#password = params[:password]
    #email = logindata[:email]
    #password= logindata[:password]
    #puts logindata
		# JSON to get name and password
   #puts "heyyyyyyy!! #{params} bsssssss"

	if student1 = Student.find_by_email(email) and student1.password == password

			@display =  " student login "

	elsif instructor1 = Instructor.find_by_email(email) and instructor1.password == password
            
            

            respond_to do |format|
                format.json {render json: ["abas ia 3abeet",instructor1,  "this is an instructor"] }
			end


	else
		@display =  "wrong email or password"
	end

		
end

end