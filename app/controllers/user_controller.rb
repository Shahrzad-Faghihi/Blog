class UserController < ApplicationController
  def new
  	#session[:user_params] ||= {}
  	@user = User.new
  	@user.current_step = session[:user_step]
  	
  end

  def create
  	#session[:user_params].deep_merge!(params[:user]) if params[:user] 
  	@user = User.new(params[:user])
  	@user.current_step = session[:user_step]

    if params[:back_button]
      @user.previous_step
      
    elsif @user.last_step?
      #render "signed_up"
    else
      @user.next_step
      
    end

  #  render "new"
    session[:user_step] = @user.current_step
    render "new"

  end

  def signed_up
  end
end




