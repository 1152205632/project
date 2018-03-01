class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def authenticate_admin
    unless current_user.admin?
      # flash[:alert] = "Not allow!"
      redirect_to root_path
    end
  end

  def authenticate_client
    unless current_user.client?
      # flash[:alert] = "Not allow!"
      redirect_to root_path
    end
  end
  
end
