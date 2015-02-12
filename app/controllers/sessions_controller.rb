class SessionsController < ApplicationController

  before_action :authenticate_any! , :except => :create
  

  def create
    user = find_user params[:email],params[:password]
    if user and user.valid_password?(params[:password])
      user.ensure_authentication_token!  # make sure the user has a token generated  
      sign_in user if user   
      render :template=>"sessions/create.json.jbuilder", :status=> :created, locals: {user: user ,
       coming_quiz: user.quizzes.arrange.coming_quizzes.first} , :formats => [:json]

    end
  end

  def destroy

    if student_signed_in?
      user = Student.where(:authentication_token => params[:auth_token]).first
    elsif instructor_signed_in?
      user = Instructor.where(:authentication_token => params[:auth_token]).first
    elsif admin_signed_in?
      user = Admin.where(:authentication_token => params[:auth_token]).first
    else
      render :template=>"sessions/delete.json.jbuilder", :success => false, :status=> :ok,
        locals: {message: "Sign out failed"} ,:formats => [:json]
    end
    user.reset_authentication_token!
      render :template=>"sessions/delete.json.jbuilder", :status=> :ok,
        locals: {message: "Good Bye"} ,:formats => [:json]
  end

  private

    def find_user (email,password)
      if student = Student.find_by_email(email) and student.valid_password?(password)
         user = Student.find_for_database_authentication(:email => email)
         @role = "student"
      elsif instructor = Instructor.find_by_email(email) and instructor.valid_password?(password)
         user = Instructor.find_for_database_authentication(:email => email)
         @role = "instructor"
      elsif admin = Admin.find_by_email(email) and admin.valid_password?(password)
         user = Admin.find_for_database_authentication(:email => email)
         @role = "admin"
      else 
         invalid_login_attempt
      end     
        user
    end

    def invalid_login_attempt
     warden.custom_failure!
     render :template=>"sessions/invalid_login_attempt.json.jbuilder", :success => false,
      :status => :unauthorized ,:formats => [:json]
    end
end