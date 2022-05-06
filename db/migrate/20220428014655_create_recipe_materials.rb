class CreateRecipeMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_materials do |t|
      t.string :material, null: false
      t.string :quantity, null: false
      t.bigint :recipe_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
