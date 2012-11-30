class WelcomeController < ApplicationController
  def index
  end

  def lookup
  	@user = User.where(:twitter => params[:twitter]).first_or_create()
  	redirect_to user_url(@user.id)
  end
end
