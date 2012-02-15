class HomeController < ApplicationController
	#before_filter :authenticate_user!
	def sign_in
	if request.post?
      redirect_to "/home"
    
	end	
end
