class CreateTerms < ActiveRecord::Migration
  def self.up
  create_table "terms", :force => true do |t|
    t.text     "Title"
    t.text     "Body"
    t.integer  "context"
    t.datetime "created_at"
    t.datetime "updated_at"
    end
  end

  def self.down
    drop_table :terms
  end
end
