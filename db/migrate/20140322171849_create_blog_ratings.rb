class CreateBlogRatings < ActiveRecord::Migration
  def change
    create_table :blog_ratings do |t|
      t.integer :blog_id, null: false
      t.integer :rating_id, null: false

      t.timestamps
    end
  end
end
