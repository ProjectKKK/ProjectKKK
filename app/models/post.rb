class Post < ActiveRecord::Base

	mount_uploader :image, ImageUploader
	mount_uploader :movie, MovieUploader

	has_many :votes, dependent: :destroy
	has_many :comments, dependent: :destroy
	belongs_to :user

	def voted_by? user
	  votes.where(user_id: @user.id).exists?
	end

	acts_as_taggable_on :tags
	acts_as_taggable
	acts_as_ordered_taggable_on :category
	# @post.tag_list.add("life", "interior", "hobby", "electric", "outdoor", "vehicle", "others")

end
