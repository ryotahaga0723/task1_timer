class CreateCookings < ActiveRecord::Migration[6.0]
  def change
    create_table :cookings do |t|
      t.string :cooking_material, null: false
      t.string :cooking_name, null: false
      t.integer :hour
      t.integer :minute
      t.integer :second

      t.timestamps
    end
  end
end
