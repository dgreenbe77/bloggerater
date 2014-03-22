class Blog < ActiveRecord::Base
  belongs_to :user
  # has_many :reviews
  # has_many :blog_subcategories
  # has_many :subcategories, through: :blog_subcategories
  # has_many :ratings, through: :blog_ratings
  # has_many :blog_ratings
  # accepts_nested_attributes_for :subcategories, :reject_if => lambda { |a| a[:subcategory].blank? }, :allow_destroy => true
  # accepts_nested_attributes_for :ratings, :reject_if => lambda { |a| a[:rating].blank? }, :allow_destroy => true
end
