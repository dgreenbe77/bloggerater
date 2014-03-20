class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :type, null: false
      t.integer :category_id, null: false

      t.timestamps
    end
  end
end
