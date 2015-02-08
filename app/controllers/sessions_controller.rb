class SessionsController < ApiController

  skip_before_filter :authenticate_student!, :only => :create

  def create
    user_role params[:email],params[:password]
    if @user && @user.valid_password?(params[:password])
      @user.ensure_authentication_token!  # make sure the user has a token generated     
      render :json => { :authentication_token => @user.authentication_token, :name => @user.name, role: @role,
      subjects: @user.subjects  },
      :status => :created
    end
  end

  def destroy
    # expire auth token
    student = Student.where(:authentication_token => params[:authentication_token]).first    
    student.reset_authentication_token!
    student.update(authentication_token: nil)
    render :json => { :message => ["Session deleted."] },  :success => true, :status => :ok
  end

  private

    def user_role (email,password)
      if student = Student.find_by_email(email) and student.password = password
         @user = Student.find_for_database_authentication(:email => email)
         @role = "student"
      elsif instructor = Instructor.find_by_email(email) and instructor.password = password
         @user = Instructor.find_for_database_authentication(:email => email)
         @role = "instructor"
      elsif admin = Admin.find_by_email(email) and admin.password = password
         @user = Admin.find_for_database_authentication(:email => email)
         @role = "admin"
      else return invalid_login_attempt
      end     
        @user
    end

    def invalid_login_attempt
     warden.custom_failure!
     render :json => { :errors => ["Invalid email or password."] },  :success => false, :status => :unauthorized
    end

end