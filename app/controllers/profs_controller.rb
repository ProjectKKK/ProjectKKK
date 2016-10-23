class ProfsController < ApplicationController
	before_action :set_prof, only:[:show, :edit, :update]
	before_action :correct_user, only:[:edit, :update]
	before_action :authenticate_user!

	def new
	  @prof = Prof.new
	end

	def create
	  @prof = Prof.new(prof_params)
	  @prof.user_id = current_user.id
	  @prof.save
	  redirect_to @prof
	end

	def show
	end

	def edit
	end

	def update
	  @prof.update(prof_params)
	  @prof.save
	  redirect_to @prof
	end


	private

	def set_prof
	  @prof = Prof.find(params[:id])
	end

	def prof_params
	  params.require(:prof).permit(:name, :gender, :age, :live, :introduce, :user_id)	
	end

	def correct_user
	  prof = Prof.find(params[:id])
	  if current_user.id != prof.user.id
	  	redirect_to root_path
	  end
	end

end