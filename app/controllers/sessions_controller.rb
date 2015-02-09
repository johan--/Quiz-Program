class SessionsController < ApplicationController

  before_action :authenticate_any! , :except => :create

  def create
    user = find_user params[:email],params[:password]
    if user and user.valid_password?(params[:password])
      user.ensure_authentication_token!  # make sure the user has a token generated  
      sign_in user if user   
      render :json => { :authentication_token => user.authentication_token, :name => user.name, role: @role},
      :status => :created
    end
  end

  def destroy
    # expire auth token
    if student_signed_in?
      user = Student.where(:authentication_token => params[:auth_token]).first
    elsif instructor_signed_in?
      user = Instructor.where(:authentication_token => params[:auth_token]).first
    elsif admin_signed_in?
      user = Admin.where(:authentication_token => params[:auth_token]).first
    else
      render :json => {:message => ["You aren't signed in"]}, :success => false, :status => :ok
    end
    user.reset_authentication_token!
      render :json => { :message => ["Session deleted."] },  :success => true, :status => :ok
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
     render :json => { :errors => ["Invalid email or password."] },  :success => false, :status => :unauthorized
    end

end