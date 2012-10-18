class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end


  def show
    @project = Project.find(params[:id])
  end

  def create
    project = Project.new(params[:project])
    project.save
    redirect_to projects_path
  end


  def edit
    @project = Project.find(params[:id])
  end

  def update
    project = Project.find_by_id params[:id]
    project.update_attributes params[:project]
    redirect_to projects_path
  end

  def review
    project_id = params[:id]
    @project = Project.find(project_id)
    @review = Review.new
  end

end