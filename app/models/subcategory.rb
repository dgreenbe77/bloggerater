class Subcategory < ActiveRecord::Base
  has_many :subcategory_blogs
  has_many :blogs,
  through: :subcategory_blogs
  belongs_to :category
end
