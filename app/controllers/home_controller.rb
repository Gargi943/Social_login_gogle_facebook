class HomeController < ApplicationController
  def home
  end

  def index
  end

  def merge_example
  end
  
  def omniauth
    # debugger
    @user = User.from_omniauth(auth)
    @user.save
    session[:user_id] = @user.id
    redirect_to home_path
  end
  private
  def auth
    request.env['omniauth.auth']
  end
end
