class ProjectsController < ApplicationController
    def index
        @projects = Project.all
    end
    def show
        @project = Project.find(params[:id])
    end
    def new
        @project = Project.new
    end
    def create
        @project = Project.new(pro_params)
        if @project.save
            redirect_to @project
        else
            render :new
        end
    end

    private

    def pro_params
        params.require(:project).permit(:name)
    end
end
