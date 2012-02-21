class SystemController < ApplicationController
	before_filter :authenticate_user!
	def index
	  @dashoard  = Dashboard.new
	  @client_ip = request.remote_ip
	  @remote_ip = request.env["HTTP_X_FORWARDED_FOR"]
	  @my_ip     = request.env["HTTP_X_FORWARDED_FOR"] || request.remote_addr
  	  @ip_addr   = request.env['REMOTE_ADDR']
	end
	def pages
		@dashoard   = Dashboard.new
		@pageTree   = Page.where(userid: current_user.id)
		@p_settings = Page.where(id: params[:id]).where(userid: current_user.id)
	end
	def create
		if (params[:ajax])
			Page.create!(userid: current_user.id, 
						 name: params[:pagename], 
						 content: params[:pagetext])
		end
	end
end
