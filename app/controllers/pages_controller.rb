class PagesController < ApplicationController
	before_filter :authenticate_user!

	def index
		@pageTree = current_user.pages.where(:subpage != 0)
		@pageSubs = current_user.pages.where("subpage >= ?", 1)
	end
	def show
		@page     = Page.find(params[:id])	
		@pageTree = current_user.pages.where(:subpage != 0)
	end
	def edit
		@page     = Page.find(params[:id])	
		@pageTree = current_user.pages.all
	end	
	def update
		@page = current_user.pages.find(params[:id])
		respond_to do |format|
			if @page.update_attributes(params[:page])
				format.js
			end
		end
	end
	def create	
		@page = current_user.pages.new(params[:page])
		respond_to do |format|
			if @page.save
				format.html { redirect_to @page, notice: "Din sida har nu skapats" }
				#format.js -> If request is needed
			end
		end
	end
	def destroy
		@page = current_user.pages.find(params[:id])
		@page.destroy
		respond_to do |format|
			format.html {redirect_to pages_path, notice: "Sidan har nu raderats"}

		end

	end
end
