# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_02_040331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cookings", force: :cascade do |t|
    t.string "cooking_material", null: false
    t.string "cooking_name", null: false
    t.integer "hour"
    t.integer "minute"
    t.integer "second"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cookings_recipes", force: :cascade do |t|
    t.bigint "cooking_id", null: false
    t.bigint "recipe_id", null: false
    t.index ["cooking_id"], name: "index_cookings_recipes_on_cooking_id"
    t.index ["recipe_id"], name: "index_cookings_recipes_on_recipe_id"
  end

  create_table "cookings_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "cooking_id", null: false
    t.index ["cooking_id"], name: "index_cookings_users_on_cooking_id"
    t.index ["user_id"], name: "index_cookings_users_on_user_id"
  end

  create_table "recipe_materials", force: :cascade do |t|
    t.string "material", null: false
    t.string "quantity", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_recipe_materials_on_recipe_id"
  end

  create_table "recipe_procedures", force: :cascade do |t|
    t.text "procedure", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_recipe_procedures_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "recipe_name", null: false
    t.integer "recipe_time", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cookings_recipes", "cookings"
  add_foreign_key "cookings_recipes", "recipes"
  add_foreign_key "cookings_users", "cookings"
  add_foreign_key "cookings_users", "users"
end
