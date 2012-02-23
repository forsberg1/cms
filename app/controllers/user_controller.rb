class UserController < ApplicationController
	#before_filter :authenticate_user!
	def sign_in
	if request.post?
      redirect_to "/home"
    
	end	
	def logout
		
	end
end
