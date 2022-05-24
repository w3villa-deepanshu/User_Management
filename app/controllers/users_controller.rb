class UsersController < ApplicationController
  def index
    @users =  User.all
  end

  def show
    @user = User.find(params[:id])
    # @management = @user.user_management_systems.all
  end

  def new
    @user = User.new
    # @user = User.find(params[:id])
    # @management = @user.user_management_systems.build
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    @management = @user.user_management_systems.build
  end

  def update
    @user = User.find(params[:id])
    @management = @user.user_management_systems.build(man_params)
    if @management.update
      redirect_to root_path     
    end
  end

  
  private
  def user_params
    params.require(:user).permit(:name,:experience,:project_id)
  end
end
