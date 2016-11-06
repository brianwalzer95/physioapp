module ApplicationHelper
	def signed_in?
		if session[:user_id].nil?
			return
		else
			@current_user = User.find_by_id(session[:user_id])
		end
	end
	
	def secondsigned_in?
		if session[:second_id].nil?
			return
		else
			@secondcurrent_user = Second.find_by_id(session[:second_id])
		end
	end
end