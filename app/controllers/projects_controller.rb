class ProjectsController < ApplicationController
  def index
  	@projects = if params[:search]
  		Project.where("name LIKE ?", "%#{params[:search]}%")
  	else
  		Project.order('products.created_at DESC').page(params[:page])
  	end
  	@projects = @projects.page(params[:page])

  	respond_to do |format|
  		format.html
  	end
  end

  def show
  	@project = Project.find(params[:id])
  end

  def new
  	@project = Project.new
  end

  def edit
  	@project = Project.find(params[:id])
  end

  private

  def project_params
  	params.require(:project).permit(:title, :description, :goal, :start_date, :end_date)
  end
end
