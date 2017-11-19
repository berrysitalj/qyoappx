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

ActiveRecord::Schema.define(version: 20171119073530) do

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cells", force: :cascade do |t|
    t.string "data1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "data2"
    t.string "data3"
    t.string "data4"
    t.string "data5"
    t.string "data6"
    t.string "data7"
    t.string "data8"
    t.string "data9"
    t.string "data10"
    t.string "data11"
    t.string "data12"
    t.string "data13"
    t.string "data14"
    t.string "data15"
    t.string "data16"
    t.string "data17"
    t.string "data18"
    t.string "data19"
    t.string "data20"
    t.string "data21"
    t.string "data22"
    t.string "data23"
    t.string "data24"
    t.string "data25"
    t.string "data26"
    t.string "data27"
    t.string "data28"
    t.string "data29"
    t.string "data30"
    t.string "data31"
    t.string "data32"
    t.string "data33"
    t.string "data34"
    t.string "data35"
    t.string "data36"
    t.string "data37"
    t.string "data38"
    t.string "data39"
    t.string "data40"
    t.string "data41"
    t.string "data42"
    t.string "data43"
    t.string "data44"
    t.string "data45"
    t.string "data46"
    t.string "data47"
    t.string "data48"
    t.string "data49"
    t.string "data50"
    t.string "data51"
    t.string "data52"
    t.string "data53"
    t.string "data54"
    t.string "data55"
    t.string "data56"
    t.string "data57"
    t.string "data58"
    t.string "data59"
    t.string "data60"
  end

  create_table "refers", force: :cascade do |t|
    t.string "filename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "enum"
    t.string "name"
    t.string "dname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.string "fname"
  end

end
