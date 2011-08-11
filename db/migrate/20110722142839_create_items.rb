class CreateItems < ActiveRecord::Migration
  def self.up
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
  end

  def self.down
    drop_table :items
  end
end
