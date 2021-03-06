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


ActiveRecord::Schema.define(version: 20141217043640) do


  create_table "adoption_forms", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "address"
    t.string   "neighborhood"
    t.string   "region"
    t.string   "city"
    t.string   "phone"
    t.string   "mobile_phone"
    t.string   "email"
    t.string   "age"
    t.string   "ingresos_mensuales"
    t.string   "profesion"
    t.string   "tipo_de_vivienda"
    t.string   "tipo_de_propiedad_de_la_vivienda"
    t.string   "question_1"
    t.string   "question_2"
    t.string   "question_3"
    t.string   "question_4"
    t.string   "question_5"
    t.string   "question_6"
    t.string   "question_7"
    t.string   "question_8"
    t.string   "question_9"
    t.string   "question_10"
    t.string   "question_11"
    t.string   "question_12"
    t.string   "question_13"
    t.string   "question_14"
    t.string   "question_15"
    t.string   "question_16"
    t.string   "question_17"
    t.string   "question_18"
    t.string   "question_19"
    t.string   "question_20"
    t.string   "question_21"
    t.string   "question_22"
    t.string   "question_23"
    t.string   "question_24"
    t.string   "question_25"
    t.string   "question_26"
    t.string   "question_27"
    t.string   "question_28"
    t.integer  "pets_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "pet_id"
  end

  add_index "adoption_forms", ["pets_id"], name: "index_adoption_forms_on_pets_id"

  create_table "adoptions", force: true do |t|
    t.string   "user_description"
    t.integer  "institution_id"
    t.integer  "pet_id"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "adoptions", ["institution_id"], name: "index_adoptions_on_institution_id"
  add_index "adoptions", ["pet_id"], name: "index_adoptions_on_pet_id"
  add_index "adoptions", ["user_id"], name: "index_adoptions_on_user_id"

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "author_name"
    t.text     "body"
    t.integer  "article_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id"

  create_table "institutions", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "website"
    t.string   "manager"
    t.string   "address"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "pets", force: true do |t|
    t.string   "name"
    t.string   "kind"
    t.string   "age"
    t.string   "gender"
    t.string   "size"
    t.text     "story"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "city"
    t.string   "country"
    t.string   "region"
    t.integer  "user_id"
    t.integer  "institution_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["article_id"], name: "index_taggings_on_article_id"
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.text     "description"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "unconfirmed_email"
    t.string   "confirmation_token"
    t.string   "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
