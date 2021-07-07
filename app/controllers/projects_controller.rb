class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    
  end

  def new
    @project = Project.new
    @project.comments.build
  end

  def create
    @project = Project.create(project_params)

    if @project.save
      flash[:notice] = "Your project created successfully"
      redirect_to projects_path
    end 
  end

  def edit
    @project = Project.find(params[:id])
    
  end

  def update
    @project = Project.find(params[:id])
  
      if @project.update(project_params)
      flash[:notice] = "Your project updated successfully"
       redirect_to employees_path
      else
        render :edit
      end
    end


  private
  def project_params
    params.require(:project).permit(:name,:desc,employee_ids: [],comments_attributes: [:body])
  end
end
