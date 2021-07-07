class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new 
    @user = User.new
  end

  def create
    @user = User.new(relation_params)
   if @user.save
     redirect_to users_path
   end 
 end

 def show
  @data = User.find(params[:id])
end

 private
  def relation_params
    params.require(:user).permit(:name)
  end
end
