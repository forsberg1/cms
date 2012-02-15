class HomeController < ApplicationController
	#before_filter :authenticate_user!
	def index
		if user_signed_in?
      redirect_to "/system"
    end
    else if request.post?
      redirect_to "/home"
    end
	end	
end
