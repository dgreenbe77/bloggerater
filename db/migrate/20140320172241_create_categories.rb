class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :genre, null: false

      t.timestamps
    end
  end
end
