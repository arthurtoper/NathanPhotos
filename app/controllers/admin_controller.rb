class AdminController < ApplicationController

skip_before_filter :redirect_unless_admin, :only => [:login]
  
  def login
    username = params[:username]
  	password = Digest::SHA2.hexdigest(params[:password])
  	
  	if username == $admin_username && password == $admin_password
  		session[:user_is_admin] = true
  		redirect_to admin_url, flash: { info: 'Login successful' }
  	else
  		session[:user_is_admin] = false
  		redirect_to admin_url, flash: { error: 'Login failed' }
  	end
  end
  
  def logout
    if user_is_admin
      session[:user_is_admin] = false
      redirect_to admin_url, flash: { info: 'You have logged out' }
    else
      redirect_to admin_url
    end
  end
  
end