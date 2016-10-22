class PostsController < ApplicationController
attr_reader 

	def new
		@post = Post.new

	end


	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		@post.tag_list.add("life", "interior", "hobby", "electric", "outdoor", "vehicle", "others")
		if @post.save
		   redirect_to '/posts', notice: 'Poi’!されました'
		else
			render :new
		end
			
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
		redirect_to '/posts', notice: 'Poi’!が、編集されました'
	end


	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to '/posts', notice: 'Poi’!が、削除されました'
	end

	def life
		@posts = Post.all.reverse_order
	end





	private

	def post_params
		params.require(:post).permit(:image, :movie, :name, :description, :where, :post_id, :user_id, :category_list, :add_error)
	end
end


