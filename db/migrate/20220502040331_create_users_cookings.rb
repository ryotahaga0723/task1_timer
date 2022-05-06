class CreateUsersCookings < ActiveRecord::Migration[6.0]
  def change
    create_table :cookings_users do |t|
      t.references :user, foreign_key: true
      t.references :cooking, null: false, foreign_key: true
    end
  end
end
