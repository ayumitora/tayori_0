# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_18_014822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "display_name"
    t.string "full_name"
    t.string "icon"
    t.integer "score"
    t.string "residence"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "evaluates", force: :cascade do |t|
    t.integer "product_id"
    t.integer "customer_id"
    t.float "rate"
    t.string "image"
    t.text "content"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_evaluates_on_customer_id"
    t.index ["product_id", "customer_id"], name: "index_evaluates_on_product_id_and_customer_id", unique: true
    t.index ["product_id"], name: "index_evaluates_on_product_id"
  end

  create_table "makers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "", null: false
    t.string "site_url"
    t.text "overview"
    t.string "logo"
    t.string "image"
    t.string "ivent"
    t.index ["email"], name: "index_makers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_makers_on_reset_password_token", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price"
    t.string "image"
    t.string "season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "maker_id"
    t.index ["maker_id"], name: "index_products_on_maker_id"
  end

  add_foreign_key "products", "makers"
end
