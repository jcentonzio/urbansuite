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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101212193448) do

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "mail"
    t.string   "phone"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pai_pais", :primary_key => "PAI_PK", :force => true do |t|
    t.string "PAI_NOMBRE", :limit => 80
  end

  create_table "reservations", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "rut"
    t.string   "phone"
    t.string   "mail"
    t.string   "address"
    t.string   "city"
    t.integer  "pais_id"
    t.text     "comment"
    t.integer  "type_room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "arrived"
    t.date     "output"
  end

  create_table "type_rooms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
