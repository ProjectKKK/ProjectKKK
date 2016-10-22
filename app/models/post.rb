class Post < ActiveRecord::Base

	mount_uploader :image, ImageUploader
	mount_uploader :movie, MovieUploader

	has_many :votes, dependent: :destroy

	has_many :comments, dependent: :destroy
	# validates :title, presence: true, lendth:{minimum: 5}

	belongs_to :user

	def voted_by? user
	  votes.where(user_id: user.id).exists?
	end

	acts_as_taggable_on :tags
	acts_as_taggable
	acts_as_ordered_taggable_on :category
	# @post.tag_list.add("life", "interior", "hobby", "electric", "outdoor", "vehicle", "others")

    validates :image, presence: true
    validates :name, presence: true
    validates :description, presence: true
    validates :where, presence: true
    validates :category_list, presence: true




# エラーメッセージをカスタムしたいときに使うといい！

#     validate :add_error_message
#   def add_error_message
#     # nameが空のときにエラーメッセージを追加する
#     if name.empty?
#       errors.add(:name, "に関係するエラーを追加")
#       errors[:base] << "モデル全体に関係するエラーを追加"
#     end
#   end


end
