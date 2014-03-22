class Subcategory < ActiveRecord::Base
  has_many :blog_subcategories
  has_many :blogs,
  through: :blog_subcategories
  belongs_to :category
end
