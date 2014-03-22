class BlogRating < ActiveRecord::Base
  belongs_to :rating
  belongs_to :blog
end
