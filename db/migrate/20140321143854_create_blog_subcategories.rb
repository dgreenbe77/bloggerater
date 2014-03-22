class CreateBlogSubcategories < ActiveRecord::Migration
  def change
    create_table :blog_subcategories do |t|
      t.integer :blog_id, null: false
      t.integer :subcategory_id, null: false

      t.timestamps
    end
  end
end
