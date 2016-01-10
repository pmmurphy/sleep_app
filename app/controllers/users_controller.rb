class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new 
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
		flash[:notice] = "Your account was created
		successfully."
	# redirect_to user_path @user
	redirect_to root_path
	else
		flash[:alert] = "There was a problem saving your
		account."
		redirect_to new_user_path
   end
 end
end
