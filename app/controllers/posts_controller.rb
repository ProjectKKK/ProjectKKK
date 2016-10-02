class PostsController < ApplicationController
	def new
		@post = Post.new	
	end

	def create
		@post = Post.new(post_params)
		@post.save
	end







	private

	def post_params
		
		params.require(:post).permit(:image, :movie, :name, :description, :where)
	end
end


