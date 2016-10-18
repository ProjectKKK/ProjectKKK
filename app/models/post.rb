class Post < ActiveRecord::Base

	mount_uploader :image, ImageUploader
	mount_uploader :movie, MovieUploader

	has_many :votes, dependent: :destroy
	has_many :comments, dependent: :destroy
	belongs_to :user

	def voted_by? user
	  votes.where(user_id: @user.id).exists?
	end
end
