class SessionsController < ApplicationController
  def new
  end

  def create
	user = User.find_by_email(params[:email])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id #stores the id in the session
		redirect_to user #displays the user/show view
	else
		flash.now[:error] = "Invalid email/password combination."
		render 'new' #shows the login page again
	end
  end

  def destroy
	if signed_in?
		session[:user_id] = nil
	else
		flash[:notice] = "You need to log in first"
	end
		redirect_to login_path
  end
  
  
   def secondnew
   
   end
   
   def secondcreate
		physio = Physio.find_by_email( params[:email])
		if physio and physio.authenticate(params[:password])
			session[:physio_id] = physio.id
			redirect_to session[:return_to] || root_path
		else
			redirect_to secondlogin_path, alert: "Invalid user/password combination"
		end
   end
   
   def seconddestroy
		session[:physio_id] = nil
		redirect_to root_path, notice: "Logged out"
   end
end


