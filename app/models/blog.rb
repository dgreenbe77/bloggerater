class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :raters, class_name: "Rating", foreign_key: :rater_id
  has_many :subcategory_blogs
  has_many :subcategories, through: :subcategory_blogs
  has_many :reviewers, class_name: "Review", foreign_key: :reviewer_id
end
