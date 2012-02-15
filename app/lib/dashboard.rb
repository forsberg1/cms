class Dashboard
	attr_accessor :current_user
	def initilaize
	
	end
	def fetch_last_sign_in(user) # User object parameter
		@current_user = user
		@current_user.last_sign_in_at
	end
end