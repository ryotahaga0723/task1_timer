class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :recipe_name, null: false
      t.integer :recipe_time, null: false

      t.timestamps
    end
  end
end
