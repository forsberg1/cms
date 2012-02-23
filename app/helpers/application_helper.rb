module ApplicationHelper
	def fetch_sign_out_link
		if user_signed_in? 
	 	  link_to('Logga ut', destroy_user_session_path)
		end        
	end
end
