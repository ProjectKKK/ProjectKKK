class Post < ActiveRecord::Base

	mount_uploader :image, ImageUploader
	has_many :votes, dependent: :destroy
	has_many :comments, dependent: :destroy

	def voted_by? user
	  votes.where(user_id: user.id).exists?
	end

	def vote_by? user
		votes.where(user_id: user.id).exists?
	end
end
