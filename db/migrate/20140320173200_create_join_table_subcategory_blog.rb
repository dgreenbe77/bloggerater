class CreateJoinTableSubcategoryBlog < ActiveRecord::Migration
  def change
    create_join_table :subcategories, :blogs do |t|
      t.index [:subcategory_id, :blog_id]
      t.index [:blog_id, :subcategory_id]
    end
  end
end
