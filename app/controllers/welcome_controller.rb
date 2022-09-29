class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    redirect_to courses_path if user_signed_in?
  end 
end 