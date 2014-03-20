class Rating < ActiveRecord::Base
  belongs_to :rater, class_name: "User", foreign_key: :rater_id
  belongs_to :blog
end
