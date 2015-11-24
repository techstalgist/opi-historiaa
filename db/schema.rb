# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151122101442) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "text"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "correct"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "causes", force: :cascade do |t|
    t.integer  "topic_id"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "causes", ["topic_id"], name: "index_causes_on_topic_id", using: :btree

  create_table "consequences", force: :cascade do |t|
    t.integer  "topic_id"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "consequences", ["topic_id"], name: "index_consequences_on_topic_id", using: :btree

  create_table "eras", force: :cascade do |t|
    t.string   "name"
    t.date     "start_year"
    t.date     "end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "key_points", force: :cascade do |t|
    t.integer  "topic_id"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "key_points", ["topic_id"], name: "index_key_points_on_topic_id", using: :btree

  create_table "level1_topic_groups", force: :cascade do |t|
    t.integer  "era_id"
    t.string   "name"
    t.date     "start_year"
    t.date     "end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "level1_topic_groups", ["era_id"], name: "index_level1_topic_groups_on_era_id", using: :btree

  create_table "level2_topic_groups", force: :cascade do |t|
    t.integer  "level1_topic_group_id"
    t.string   "name"
    t.date     "start_year"
    t.date     "end_year"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "level2_topic_groups", ["level1_topic_group_id"], name: "index_level2_topic_groups_on_level1_topic_group_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations_topics", force: :cascade do |t|
    t.integer  "topic_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "locations_topics", ["location_id"], name: "index_topic_locations_on_location_id", using: :btree
  add_index "locations_topics", ["topic_id"], name: "index_topic_locations_on_topic_id", using: :btree

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parties_topics", force: :cascade do |t|
    t.integer  "topic_id"
    t.integer  "party_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "parties_topics", ["party_id"], name: "index_topic_parties_on_party_id", using: :btree
  add_index "parties_topics", ["topic_id"], name: "index_topic_parties_on_topic_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "text"
    t.integer  "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["topic_id"], name: "index_questions_on_topic_id", using: :btree

  create_table "response_sets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "topic_id"
  end

  add_index "response_sets", ["topic_id"], name: "index_response_sets_on_topic_id", using: :btree
  add_index "response_sets", ["user_id"], name: "index_response_sets_on_user_id", using: :btree

  create_table "responses", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "answer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "response_set_id"
    t.boolean  "result"
  end

  add_index "responses", ["answer_id"], name: "index_responses_on_answer_id", using: :btree
  add_index "responses", ["question_id"], name: "index_responses_on_question_id", using: :btree
  add_index "responses", ["response_set_id"], name: "index_responses_on_response_set_id", using: :btree

  create_table "topics", force: :cascade do |t|
    t.integer  "level1_topic_group_id"
    t.integer  "level2_topic_group_id"
    t.integer  "type_id"
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "topics", ["level1_topic_group_id"], name: "index_topics_on_level1_topic_group_id", using: :btree
  add_index "topics", ["level2_topic_group_id"], name: "index_topics_on_level2_topic_group_id", using: :btree
  add_index "topics", ["type_id"], name: "index_topics_on_type_id", using: :btree

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_topics", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_topics", ["topic_id"], name: "index_user_topics_on_topic_id", using: :btree
  add_index "user_topics", ["user_id", "topic_id"], name: "index_user_topics_on_user_id_and_topic_id", unique: true, using: :btree
  add_index "user_topics", ["user_id"], name: "index_user_topics_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "answers", "questions"
  add_foreign_key "causes", "topics"
  add_foreign_key "consequences", "topics"
  add_foreign_key "key_points", "topics"
  add_foreign_key "level1_topic_groups", "eras"
  add_foreign_key "level2_topic_groups", "level1_topic_groups"
  add_foreign_key "questions", "topics"
  add_foreign_key "response_sets", "topics"
  add_foreign_key "response_sets", "users"
  add_foreign_key "responses", "answers"
  add_foreign_key "responses", "questions"
  add_foreign_key "responses", "response_sets"
  add_foreign_key "topics", "level1_topic_groups"
  add_foreign_key "topics", "level2_topic_groups"
  add_foreign_key "topics", "types"
  add_foreign_key "user_topics", "topics"
  add_foreign_key "user_topics", "users"
end
