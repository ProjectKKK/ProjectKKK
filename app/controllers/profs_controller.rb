class ProfsController < ApplicationController
	def new
		@prof = Prof.new
	end

	def create
		@prof = Prof.new(prof_params)
		@prof.save
	end





private
	def prof_params
		params.require(:prof).permit(:name, :gender, :age, :live, :introduce)
	end






end
