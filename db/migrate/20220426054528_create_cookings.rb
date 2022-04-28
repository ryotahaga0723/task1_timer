class CreateCookings < ActiveRecord::Migration[6.0]
  def change
    create_table :cookings do |t|
      t.string :cooking_material, null: false
      t.string :cooking_name, null: false
      t.integer :hour
      t.integer :minute
      t.integer :second
      t.bigint :user_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
