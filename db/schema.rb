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

ActiveRecord::Schema.define(version: 2021_11_30_011706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.text "image_url"
    t.integer "category"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "activity_keywords", force: :cascade do |t|
    t.bigint "activity_id", null: false
    t.bigint "keyword_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_activity_keywords_on_activity_id"
    t.index ["keyword_id"], name: "index_activity_keywords_on_keyword_id"
  end

  create_table "consoles", force: :cascade do |t|
    t.string "name"
    t.string "short"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_keywords", force: :cascade do |t|
    t.bigint "keyword_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_keywords_on_game_id"
    t.index ["keyword_id"], name: "index_game_keywords_on_keyword_id"
  end

  create_table "game_playstyle_keywords", force: :cascade do |t|
    t.bigint "game_playstyle_id", null: false
    t.bigint "keyword_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_playstyle_id"], name: "index_game_playstyle_keywords_on_game_playstyle_id"
    t.index ["keyword_id"], name: "index_game_playstyle_keywords_on_keyword_id"
  end

  create_table "game_playstyles", force: :cascade do |t|
    t.string "name"
    t.bigint "game_id", null: false
    t.bigint "playstyle_id", null: false
    t.text "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_playstyles_on_game_id"
    t.index ["playstyle_id"], name: "index_game_playstyles_on_playstyle_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.string "publisher"
    t.string "developer"
    t.string "series"
    t.text "description"
    t.bigint "genre_id", null: false
    t.bigint "console_id", null: false
    t.integer "year"
    t.text "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["console_id"], name: "index_games_on_console_id"
    t.index ["genre_id"], name: "index_games_on_genre_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.text "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer "status"
    t.bigint "list_item_id", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_item_id"], name: "index_goals_on_list_item_id"
  end

  create_table "item_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "list_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "list_items", force: :cascade do |t|
    t.boolean "enabled"
    t.integer "rank"
    t.integer "priority"
    t.integer "status"
    t.bigint "list_id", null: false
    t.bigint "user_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_id"], name: "index_list_items_on_list_id"
    t.index ["user_item_id"], name: "index_list_items_on_user_item_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.bigint "list_category_id", null: false
    t.bigint "user_id", null: false
    t.string "enabled"
    t.text "description"
    t.text "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_category_id"], name: "index_lists_on_list_category_id"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "content"
    t.bigint "list_item_id"
    t.bigint "record_id"
    t.bigint "goal_id"
    t.bigint "user_item_id"
    t.bigint "shared_item_id"
    t.bigint "wishlist_offer_id"
    t.bigint "wishlist_condition_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["goal_id"], name: "index_notes_on_goal_id"
    t.index ["list_item_id"], name: "index_notes_on_list_item_id"
    t.index ["record_id"], name: "index_notes_on_record_id"
    t.index ["shared_item_id"], name: "index_notes_on_shared_item_id"
    t.index ["user_item_id"], name: "index_notes_on_user_item_id"
    t.index ["wishlist_condition_id"], name: "index_notes_on_wishlist_condition_id"
    t.index ["wishlist_offer_id"], name: "index_notes_on_wishlist_offer_id"
  end

  create_table "playstyles", force: :cascade do |t|
    t.string "name"
    t.text "desctription"
    t.string "category"
    t.text "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "username"
    t.text "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "records", force: :cascade do |t|
    t.integer "status"
    t.bigint "list_item_id", null: false
    t.float "decistion_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_item_id"], name: "index_records_on_list_item_id"
  end

  create_table "shared_items", force: :cascade do |t|
    t.bigint "user_friend_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_friend_id"], name: "index_shared_items_on_user_friend_id"
    t.index ["user_id"], name: "index_shared_items_on_user_id"
  end

  create_table "user_friends", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "friend_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["friend_id"], name: "index_user_friends_on_friend_id"
    t.index ["user_id"], name: "index_user_friends_on_user_id"
  end

  create_table "user_items", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "game_id"
    t.bigint "game_playstyle_id"
    t.bigint "activity_id"
    t.bigint "item_category_id"
    t.boolean "favourite"
    t.integer "status"
    t.boolean "owned"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_user_items_on_activity_id"
    t.index ["game_id"], name: "index_user_items_on_game_id"
    t.index ["game_playstyle_id"], name: "index_user_items_on_game_playstyle_id"
    t.index ["item_category_id"], name: "index_user_items_on_item_category_id"
    t.index ["user_id"], name: "index_user_items_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wishlist_conditions", force: :cascade do |t|
    t.text "description"
    t.integer "status"
    t.bigint "user_item_id", null: false
    t.decimal "target_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_item_id"], name: "index_wishlist_conditions_on_user_item_id"
  end

  create_table "wishlist_offers", force: :cascade do |t|
    t.string "seller"
    t.bigint "user_item_id", null: false
    t.decimal "current_price"
    t.decimal "discount"
    t.string "location"
    t.string "information"
    t.decimal "best_price"
    t.date "best_price_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_item_id"], name: "index_wishlist_offers_on_user_item_id"
  end

  add_foreign_key "activity_keywords", "activities"
  add_foreign_key "activity_keywords", "keywords"
  add_foreign_key "game_keywords", "games"
  add_foreign_key "game_keywords", "keywords"
  add_foreign_key "game_playstyle_keywords", "game_playstyles"
  add_foreign_key "game_playstyle_keywords", "keywords"
  add_foreign_key "game_playstyles", "games"
  add_foreign_key "game_playstyles", "playstyles"
  add_foreign_key "games", "consoles"
  add_foreign_key "games", "genres"
  add_foreign_key "goals", "list_items"
  add_foreign_key "list_items", "lists"
  add_foreign_key "list_items", "user_items"
  add_foreign_key "lists", "list_categories"
  add_foreign_key "lists", "users"
  add_foreign_key "notes", "goals"
  add_foreign_key "notes", "list_items"
  add_foreign_key "notes", "records"
  add_foreign_key "notes", "shared_items"
  add_foreign_key "notes", "user_items"
  add_foreign_key "notes", "wishlist_conditions"
  add_foreign_key "notes", "wishlist_offers"
  add_foreign_key "records", "list_items"
  add_foreign_key "shared_items", "user_friends"
  add_foreign_key "shared_items", "users"
  add_foreign_key "user_friends", "users"
  add_foreign_key "user_friends", "users", column: "friend_id"
  add_foreign_key "user_items", "activities"
  add_foreign_key "user_items", "game_playstyles"
  add_foreign_key "user_items", "games"
  add_foreign_key "user_items", "item_categories"
  add_foreign_key "user_items", "users"
  add_foreign_key "wishlist_conditions", "user_items"
  add_foreign_key "wishlist_offers", "user_items"
end
