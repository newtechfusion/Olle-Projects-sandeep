class CreateContexts < ActiveRecord::Migration
  def self.up
  create_table "contexts", :force => true do |t|

    t.text     "Title"
    t.text     "Body"
    t.datetime "created_at"
    t.datetime "updated_at"

    end
  end

  def self.down
    drop_table :contexts
  end
end
