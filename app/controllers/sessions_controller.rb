class SessionsController < ApplicationController
  def create
	if user = User.authenticate(params[:email], params[:password])
	  session[:user_id] = user.id
	  session[:user_name] = user.name
	  redirect_to root_path, :notice => "Logged in successfully #{user.name}"
	else
	  flash.now[:alert] = 'Invalid Login/password combination'
	  render :action => 'new'
	end
  end

  def destroy
  	reset_session
  	redirect_to root_path, :notice => 'You successfully logged out'
  end
end
