class SessionsController < ApiController

  skip_before_filter :authenticate_student!, :only => :create

  def create
      puts "I'm in the sessions controller create action do you see me"
    student = Student.find_for_database_authentication(:email => params[:email])
    puts student.id
    puts student.valid_password?(params[:password])
    if student && student.valid_password?(params[:password])
      puts "in the if statement"
     student.ensure_authentication_token!  # make sure the user has a token generated     
     render :json => { :authentication_token => student.authentication_token, :student => student }, :status => :created
    else
      return invalid_login_attempt
    end
  end

  def destroy
      puts "I'm in the sessions controller destroy action do you see me"

    # expire auth token
    student = Student.where(:authentication_token => params[:authentication_token]).first    
    student.reset_authentication_token!
    student.update(authentication_token: nil)
    render :json => { :message => ["Session deleted."] },  :success => true, :status => :ok
  end

  private

  def invalid_login_attempt
    warden.custom_failure!
    render :json => { :errors => ["Invalid email or password."] },  :success => false, :status => :unauthorized
  end
end