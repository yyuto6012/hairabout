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

ActiveRecord::Schema.define(version: 20170810120925) do

  create_table "answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "text",       limit: 65535
    t.integer  "artist_id"
    t.integer  "like_count"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["artist_id"], name: "index_answers_on_artist_id", using: :btree
  end

  create_table "feeds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "feedable_type"
    t.integer  "feedable_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["feedable_type", "feedable_id"], name: "index_feeds_on_feedable_type_and_feedable_id", using: :btree
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "text",       limit: 65535
    t.integer  "user_id"
    t.integer  "want_count"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["user_id"], name: "index_questions_on_user_id", using: :btree
  end

end
