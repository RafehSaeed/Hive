
# Creating Login for the Users

class SessionsController < ApplicationController



  def new

  end

  def create

  	 user = Buisness.find_by(email: params[:session][:email]) unless (params[:session] == nil)
   	if user
   		#log the user in
   		log_in(user);
   		render json: user

   		
   	else
   		
   		render json: {"content":"Doesnt Exist"}
  end
end

  def destroy
  	log_out if logged_in?
 	render json: "User Logged out"
  end

  private

  def log_in(user)
		session[:user_id]= user.id
	end

	  def current_user
    @current_user ||= Buisness.find_by(id: session[:user_id])
 	 end

 	   # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  def log_out
  	
  	cookies.delete(:user_id)
    session.delete(:user_id)
    @current_user = nil

  end
end

