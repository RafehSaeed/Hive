
	# Controller Helping Users Login and out of Hive

	class SessionsController < ApplicationController



	  def new


	  end

	  #Creates a session for the user being logged in
	  def create

	  	#User can either login as a Buisness Admin or Service Provider
	  	 user = Buisness.find_by(email: params[:session][:email]) unless (params[:session] == nil )
	  	 user = Admin.find_by(email: params[:session][:email]) unless (params[:session] == nil || user!=nil)
	  	 user = ServiceProvider.find_by(email: params[:session][:email]) unless (params[:session] == nil || user!=nil)
	  	 
	   	if user && !logged_in? && (user.password == params[:session][:password])
	   		#log the user in
	   		log_in(user)
	   		remember(user)
	   		current_user
	   		render json: current_user



	   		
	   	elsif user == nil
	   			render json: {"content":"Invalid User"}
	   	elsif !logged_in?
	   		render json: {"content":"Invalid User"}
	   			
	  end
	end


	  #used for logging a user out via a delete http request
	  def destroy
	  	log_out if logged_in?
	 	render json: "User Logged out"
	  end

	  private

	  #logs the user in and creates a session for him

	  def log_in(user)
	  		current_user
			session[:user_id]= user.id

		end

	  #Returns the current user in the session
	  def current_user
	     @current_user ||= Buisness.find_by(id: session[:user_id])

	    
	 	 end

	  #Returns true if the user is logged in, false otherwise.
	  def logged_in?
	     !current_user.nil?

	  end

	  #Logs the user out
	  def log_out
	  	
	  	cookies.delete(:user_id)
	    session.delete(:user_id)
	    @current_user = nil

	  end

	 # Remembers a user in a persistent session.
	  def remember(user)

	    cookies.permanent.signed[:user_id] = user.id

	  end

	end

