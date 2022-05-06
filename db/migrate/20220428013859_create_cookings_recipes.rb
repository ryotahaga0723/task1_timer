class CreateCookingsRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :cookings_recipes do |t|
      t.references :cooking, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true
    end
  end
end
