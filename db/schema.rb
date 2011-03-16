# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100903004039) do

  create_table "words", :force => true do |t|
    t.string   "value",                     :null => false
    t.integer  "score",      :default => 0, :null => false
    t.integer  "a",          :default => 0, :null => false
    t.integer  "b",          :default => 0, :null => false
    t.integer  "c",          :default => 0, :null => false
    t.integer  "d",          :default => 0, :null => false
    t.integer  "e",          :default => 0, :null => false
    t.integer  "f",          :default => 0, :null => false
    t.integer  "g",          :default => 0, :null => false
    t.integer  "h",          :default => 0, :null => false
    t.integer  "i",          :default => 0, :null => false
    t.integer  "j",          :default => 0, :null => false
    t.integer  "k",          :default => 0, :null => false
    t.integer  "l",          :default => 0, :null => false
    t.integer  "m",          :default => 0, :null => false
    t.integer  "n",          :default => 0, :null => false
    t.integer  "o",          :default => 0, :null => false
    t.integer  "p",          :default => 0, :null => false
    t.integer  "q",          :default => 0, :null => false
    t.integer  "r",          :default => 0, :null => false
    t.integer  "s",          :default => 0, :null => false
    t.integer  "t",          :default => 0, :null => false
    t.integer  "u",          :default => 0, :null => false
    t.integer  "v",          :default => 0, :null => false
    t.integer  "w",          :default => 0, :null => false
    t.integer  "x",          :default => 0, :null => false
    t.integer  "y",          :default => 0, :null => false
    t.integer  "z",          :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
