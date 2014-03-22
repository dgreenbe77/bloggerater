class BlogSubcategory < ActiveRecord::Base
  belongs_to :blog
  belongs_to :subcategory
end
