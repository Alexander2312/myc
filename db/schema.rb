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

ActiveRecord::Schema.define(version: 2018_11_20_032833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "text_comment"
    t.string "photo"
    t.bigint "condition_report_id"
    t.bigint "user_id"
    t.bigint "room_element_id"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["condition_report_id"], name: "index_comments_on_condition_report_id"
    t.index ["room_element_id"], name: "index_comments_on_room_element_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "condition_reports", force: :cascade do |t|
    t.boolean "owner_signed", default: false
    t.boolean "tenant_signed", default: false
    t.bigint "lease_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lease_id"], name: "index_condition_reports_on_lease_id"
  end

  create_table "leases", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "property_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_leases_on_property_id"
    t.index ["user_id"], name: "index_leases_on_user_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "address"
    t.integer "square_meter"
    t.boolean "furnished", default: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "room_element_approvals", force: :cascade do |t|
    t.boolean "tenant_approval", default: true
    t.boolean "owner_approval", default: false
    t.bigint "condition_report_id"
    t.bigint "room_element_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["condition_report_id"], name: "index_room_element_approvals_on_condition_report_id"
    t.index ["room_element_id"], name: "index_room_element_approvals_on_room_element_id"
  end

  create_table "room_elements", force: :cascade do |t|
    t.string "name"
    t.bigint "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_room_elements_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_rooms_on_property_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "condition_reports"
  add_foreign_key "comments", "room_elements"
  add_foreign_key "comments", "users"
  add_foreign_key "condition_reports", "leases"
  add_foreign_key "leases", "properties"
  add_foreign_key "leases", "users"
  add_foreign_key "properties", "users"
  add_foreign_key "room_element_approvals", "condition_reports"
  add_foreign_key "room_element_approvals", "room_elements"
  add_foreign_key "room_elements", "rooms"
  add_foreign_key "rooms", "properties"
end
