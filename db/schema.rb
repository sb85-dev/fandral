# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_05_132721) do
  create_table "account_numbers", force: :cascade do |t|
    t.integer "number"
    t.integer "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "account_type"
    t.index ["member_id"], name: "index_account_numbers_on_member_id"
  end

  create_table "alerts", force: :cascade do |t|
    t.integer "member_id", null: false
    t.string "assigned_to"
    t.date "date_of_notice"
    t.string "received_from"
    t.string "type_of_review"
    t.date "date_oldest_account"
    t.string "decision"
    t.date "monitor_until"
    t.string "fca_maintain"
    t.boolean "document_request"
    t.date "date_documents_requested"
    t.boolean "documents_received"
    t.text "fdra_facts_notes"
    t.text "olb_review_by_lr"
    t.text "background_review_by_lr"
    t.string "fraud_flags"
    t.boolean "idv_docs_received"
    t.decimal "loss", precision: 8, scale: 2
    t.decimal "exposure", precision: 8, scale: 2
    t.string "funds_returned_reason"
    t.string "external_account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_alerts_on_member_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "document_type"
    t.text "document_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "requirement1"
    t.boolean "requirement1_required", default: false, null: false
    t.string "requirement2"
    t.boolean "requirement2_required", default: false, null: false
    t.string "requirement3"
    t.boolean "requirement3_required", default: false, null: false
    t.string "requirement4"
    t.boolean "requirement4_required", default: false, null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "request_documents", force: :cascade do |t|
    t.integer "request_id", null: false
    t.integer "document_id", null: false
    t.boolean "required"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_id"], name: "index_request_documents_on_document_id"
    t.index ["request_id"], name: "index_request_documents_on_request_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "request_type"
    t.string "products_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "member_id", null: false
    t.index ["member_id"], name: "index_requests_on_member_id"
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

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "account_numbers", "members"
  add_foreign_key "alerts", "members"
  add_foreign_key "request_documents", "documents"
  add_foreign_key "request_documents", "requests"
  add_foreign_key "requests", "members"
end
