class DreamcastersController < ApplicationController
  def newpost
    @project = Project.create!(task_params)
    flash[:notice] = "#{@project.title} was successfully created."
    redirect_to projects_path
  end


  def create
    @project = Project.create!(task_params)
    flash[:notice] = "#{@project.title} was successfully created."
    redirect_to projects_path
  end

  def show
    id = params[:id] # retrieve project task ID from URI route
    @project = Project.find(id) # look up project task by unique ID
    # will render app/views/projects/show.<extension> by default
  end

  def index

  end

  def new
    # default: render 'new' template
  end

  def create
    @project = Project.create!(task_params)
    flash[:notice] = "#{@project.title} was successfully created."
    redirect_to projects_path
  end

  def edit
    @project = Project.find params[:id]
  end

  def update
    @project = Project.find params[:id]
    @project.update_attributes!(task_params)
    flash[:notice] = "#{@project.title} was successfully updated."
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project '#{@project.title}' deleted."
    redirect_to projects_path
  end
  
  def task_params
    params.require(:project).permit(:user, :title, :description, :extended_description, :due_date)
  end

end
