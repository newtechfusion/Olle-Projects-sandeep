class ItemsTerms < ActiveRecord::Migration
  def self.up
   create_table :items_terms , :id => false, :force => true do |t|
          t.integer "item_id"
          t.integer "term_id"
        end
  end

  def self.down
        drop_table :items_terms
  end
end
