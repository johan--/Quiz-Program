class UsersController < ApplicationController

# #before_action :authenticate_student! 
# skip_before_filter :authenticate_student!, :only => :sign_in
# respond_to :json

# 	def sign_in
# 		puts "im in the users controller "
# 		user_role params[:email],params[:password]
# 		if @user && @user.valid_password?(params[:password])
# 		student.ensure_authentication_token!  # make sure the user has a token generated     
#      	render :json => { :authentication_token => student.authentication_token, :student => @user },
#      	:status => :created
# 	end


#   	def sign_out
#     	# expire auth token
#     	student = Student.where(:authentication_token => params[:authentication_token]).first    
#     	student.reset_authentication_token!
#     	student.update(authentication_token: nil)
#     	render :json => { :message => ["Session deleted."] },:success => true, :status => :ok
#   	end

# 	private
# 		def user_role email password
# 			if student = Student.find_by_email(email) and student.password = password
# 				 user = Student.find_for_database_authentication(:email => params[:email])
# 			elsif instructor = Instructor.find_by_email(email) and instructor.password = password
# 				 user = Instructor.find_for_database_authentication(:email => params[:email])
# 			elsif admin = Admin.find_by_email(email) and admin.password = password
# 				 user = Admin.find_for_database_authentication(:email => params[:email])
# 			else return invalid_login_attempt
# 			end			
# 				@user
# 		end

# 		def invalid_login_attempt
#     		warden.custom_failure!
#     		render :json => { :errors => ["Invalid email or password."] },:success => false, :status => :unauthorized
#   		end
end