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

ActiveRecord::Schema[7.1].define(version: 2024_06_20_133232) do
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

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  add_foreign_key "account_numbers", "members"
  add_foreign_key "alerts", "members"
end
