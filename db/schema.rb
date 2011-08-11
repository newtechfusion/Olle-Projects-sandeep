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

ActiveRecord::Schema.define(:version => 20110811052600) do

  create_table "contexts", :force => true do |t|
    t.text     "Title"
    t.text     "Body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contexts_terms", :id => false, :force => true do |t|
    t.integer "context_id"
    t.integer "term_id"
  end

  create_table "item_links", :force => true do |t|
    t.integer "parent_item_id"
    t.integer "child_item_id"
  end

  create_table "items", :force => true do |t|
    t.text     "Title"
    t.integer  "Reference_Type"
    t.text     "Reference_Address"
    t.text     "Reference_Chapter"
    t.text     "Reference_PageNumber"
    t.text     "Body"
    t.text     "GeoTag"
    t.integer  "TypeId"
    t.integer  "People"
    t.integer  "ProjectId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items_terms", :id => false, :force => true do |t|
    t.integer "item_id"
    t.integer "term_id"
  end

  create_table "terms", :force => true do |t|
    t.text     "Title"
    t.text     "Body"
    t.integer  "context"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
