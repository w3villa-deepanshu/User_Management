class ManagementsController < ApplicationController
def index
    @user = User.find(params[:user_id])
    @management = @user.user_management_systems.all
end
def show
    @user = User.find(params[:user_id])
    @management = @user.user_management_systems.find(params[:id])
end

def new
    @user = User.find(params[:user_id])
    @user_management_system = @user.user_management_systems.new
end

def create
    @user = User.find(params[:user_id])
    @user_management = @user.user_management_systems.new(man_params)
    if @user_management.save
        redirect_to user_managements_path   
    else
puts "error"
    end
end
private
def man_params
  params.require(:user_management_system).permit(:name,:user_id,:project_id)
end
end
