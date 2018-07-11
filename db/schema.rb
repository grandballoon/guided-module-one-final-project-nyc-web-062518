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

ActiveRecord::Schema.define(version: 2018_07_10_150455) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.boolean "a_list"
    t.integer "paygrade"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "actor_id"
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.boolean "oscar_winner"
  end

  create_table "movie_actors", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "actor_id"
  end

  create_table "movie_characters", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "character_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "director_id"
    t.integer "box_office"
    t.boolean "greenlit"
    t.string "trailer"
  end

end
