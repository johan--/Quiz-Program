class ApplicationController < ActionController::Base
	#  before_filter :after_token_authentication # it is empty hook provided by devise i,e 
 # #once user is successfully authenticated with the token devise look for this method , 
 # # and execute the code there

 #  def after_token_authentication
 #  	  puts "I'm in the application controller function do you see me"
 #  	  puts params[:x]
 #    if params[:x].present?

 #    	puts "i got the authentication key"

 #      @student = Student.find_by_authentication_token(params[:x])
 #     # puts @student.id # we are finding 
 #      #the user with the authentication_key with which devise has authenticated the user
 #      sign_in @student if @student # we are siging in user if it exist. sign_in is devise method 
 #                             #  to sigin in any user
 #      redirect_to :controller => 'students', :action => 'index' # now we are redirecting the user to root_path i,e our home page
 #    end
 #  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
end
