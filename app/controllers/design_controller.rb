class DesignController < ApplicationController
  before_filter :authenticate_user!
  def index
    #@layout = Layout.find(:all)
    @layout = current_user.layouts.all

  end
  def show
  end
end
