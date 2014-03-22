class AddRatingsAndCategoryAndSubcategory < ActiveRecord::Migration
  def change

    change_table :blogs do |t|
      t.integer :ratings, null: false
      t.string :category, null: false
    end

  end
end
