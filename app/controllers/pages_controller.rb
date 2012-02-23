class PagesController < ApplicationController
	before_filter :authenticate_user!
	def index
		@pageTree = Page.where(user_id: current_user.id)	
	end
	def show
		@page     = Page.find(params[:id])	
		@pageTree = Page.where(user_id: current_user.id)	
	end
	def edit
		@page     = Page.find(params[:id])	
		@pageTree = Page.where(user_id: current_user.id)	
	end	
	def update
		@page = Page.find(params[:id])
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
				format.html{redirect_to @page, notice: "Din sida har nu skapats"}
			end
		end
	end
	def destroy
	end
end
