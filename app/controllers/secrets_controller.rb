class SecretsController < ApplicationController
  before_action :require_login

  def show
    if !current_user
      redirect_to login_path
    end
  end
  
  private
  def require_login
    unless session.include? :name
      flash[:errors] = ["You gotta be logged in to see the secret!"]
      redirect_to login_path 
    end
  end

end
