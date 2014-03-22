class Rating < ActiveRecord::Base
  # belongs_to :rater, class_name: "User"
  belongs_to :user
  has_many :blogs, through: :blog_ratings
  has_many :blog_ratings
end
