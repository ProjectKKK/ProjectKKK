class PostsController < ApplicationController
attr_reader 

	def new
		@post = Post.new

	end


	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to '/posts', notice: '投稿が、保存されました！'
	end


	def index
		@posts = Post.all.reverse_order
	end


	def show
		@post = Post.find(params[:id])
	end


	def edit
		@post = Post.find(params[:id])
	end


	def update
		@post = Post.find(params[:id])
		@post.update_attributes(post_params)
		redirect_to '/posts', notice: '投稿が、編集されました！'
	end


	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to '/posts', notice: '投稿が、削除されました！'
	end





	private

	def post_params
		params.require(:post).permit(:image, :movie, :name, :description, :where, :post_id)
	end
end


