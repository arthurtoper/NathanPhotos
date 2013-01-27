class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_admin, :redirect_unless_admin

  def set_admin
    @user_is_admin = user_is_admin
  end

  def redirect_unless_admin
    redirect_to admin_url unless @user_is_admin
  end

  protected  
  private
  def user_is_admin
    !session[:user_is_admin].nil? && session[:user_is_admin]
  end

end
