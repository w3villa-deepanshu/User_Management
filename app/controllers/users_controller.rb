class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

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

  def correct_admin
    @admin = current_user.users.find_by(id: params[:id])
    redirect_to users_path ,notice: "Not Authorized to edit this friend" if @admin.nil?
  end

  
  private
  def user_params
    params.require(:user).permit(:name,:experience,:project_id)
  end
end
