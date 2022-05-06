class CreateRecipeProcedures < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_procedures do |t|
      t.text :procedure, null: false
      t.bigint :recipe_id, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
