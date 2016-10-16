class VotesController < ApplicationController
	before_action :authenticate_user!
	def create
		@post=Post.find(params[:post_id])
		@vote=current_user.vote.build(post: @post)

		if @vote.save
			redirect_to posts_url, notice: "いいね！しました"
		else
			redirect_to posts_url, alert: "いいね！できません"
		end
	end

	def destroy
		@vote=current_user.vote.find_by!(post_id: params[:post_id])
		@vote.destroy
		redirect_to posts_url, notice: "いいね！を削除しました"
	end
end
