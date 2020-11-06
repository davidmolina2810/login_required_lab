class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && !params[:name].blank?
      current_user
      redirect_to root_path
    else
      flash[:errors] = ["Name cannot be blank"]
      redirect_to login_path
    end      
  end

  def destroy
    if current_user
      session.delete :name
    end
  end
end
