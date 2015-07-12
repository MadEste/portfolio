class ProjectsController < ApplicationController
	before_action :find_project, only:[:show,:edit,:update,:destroy]
	before_action :authenticate_admin!, except: [ :show, :index ]
	
	def index
		if params[:category].blank?
			@projects = Project.all.order("updated_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@projects = Project.where(category_id: @category_id).order("updated_at DESC")
		end
	end

	def show

	end

	def new 
		@project = Project.new
	end

	def create 
		@project = Project.new(project_params)
		if @project.save
			redirect_to @project
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @project.update(project_params)
			redirect_to @project
		else
			render 'edit'
		end
	end

	def destroy
		@project.destroy
		redirect_to root_path, notice: "Destroyed Project"
	end

	private

	def find_project
		@project = Project.friendly.find(params[:id])
	end

	def project_params
		params.require(:project).permit( :title, :description, :url, :video, :category_id)
	end
	
end
