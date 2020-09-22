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

ActiveRecord::Schema.define(version: 2020_09_22_102947) do

  create_table "recipes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "recipe_name", null: false
    t.text "explanation", null: false
    t.string "material_1", null: false
    t.string "material_2"
    t.string "material_3"
    t.string "material_4"
    t.string "material_5"
    t.string "material_6"
    t.string "material_7"
    t.string "material_8"
    t.string "material_9"
    t.string "material_10"
    t.string "material_1_amount", null: false
    t.string "material_2_amount"
    t.string "material_3_amount"
    t.string "material_4_amount"
    t.string "material_5_amount"
    t.string "material_6_amount"
    t.string "material_7_amount"
    t.string "material_8_amount"
    t.string "material_9_amount"
    t.string "material_10_amount"
    t.text "how_to_make_1", null: false
    t.text "how_to_make_2"
    t.text "how_to_make_3"
    t.text "how_to_make_4"
    t.text "how_to_make_5"
    t.text "how_to_make_6"
    t.text "how_to_make_7"
    t.text "how_to_make_8"
    t.text "how_to_make_9"
    t.text "how_to_make_10"
    t.text "point", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.date "birthday", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "recipes", "users"
end
