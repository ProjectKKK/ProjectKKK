class CommentController < ApplicationController

	def create
		@post = Post.find(params[:id])
		@comment = @post.comments.create(comment_params)
		redirect_to post_path(@post)
	end

	private
		def comment_params
			params.require(:comments).permit(:commenter, :body,)
		end
end
