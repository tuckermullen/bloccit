class SponsoredPost < ActiveRecord::Base
  belongs_to :topic
  # has_many :comments, dependent: :destroy

  # def comments
  #   Comment.where(sponsored_post_id: self.id)
  # end
end

# @sponsored_post = SponsoredPost.first
# @sponsored_post.comments
