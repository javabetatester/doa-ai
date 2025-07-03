# frozen_string_literal: true

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

ActiveRecord::Schema[8.0].define(version: 2025_07_03_015201) do
  create_table "donation_points", force: :cascade do |t|
    t.string("name")
    t.text("description")
    t.string("contact_name")
    t.string("contact_phone")
    t.string("contact_email")
    t.datetime("created_at", null: false)
    t.datetime("updated_at", null: false)
    t.index(["name"], name: "index_donation_points_on_name", unique: true)
  end

  create_table "issue_types", force: :cascade do |t|
    t.string("name")
    t.text("description")
    t.datetime("activated_at")
    t.datetime("created_at", null: false)
    t.datetime("updated_at", null: false)
  end

  create_table "report_donation_points", force: :cascade do |t|
    t.integer("donation_point_id", null: false)
    t.integer("issue_type_id", null: false)
    t.text("comments")
    t.string("contact_email")
    t.string("contact_phone")
    t.string("status", default: "pending")
    t.datetime("created_at", null: false)
    t.datetime("updated_at", null: false)
    t.index(["donation_point_id"], name: "index_report_donation_points_on_donation_point_id")
    t.index(["issue_type_id"], name: "index_report_donation_points_on_issue_type_id")
  end

  add_foreign_key "report_donation_points", "donation_points"
  add_foreign_key "report_donation_points", "issue_types"
end
