class CreateItemLinks < ActiveRecord::Migration
  def self.up
    create_table :item_links do |t|
       t.integer "parent_item_id"
       t.integer "child_item_id"

    end
  end

  def self.down
    drop_table :item_links
  end
end
