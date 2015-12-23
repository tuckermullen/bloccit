class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  belongs_to :rating#, class_name: 'Rating', foreign_key: 'rating'
end
