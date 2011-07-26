class ContextsTerms < ActiveRecord::Migration
  def self.up

       create_table :contexts_terms , :id => false, :force => true do |t|
          t.integer "contexts_id"
          t.integer "terms_id"
        end
  end

  def self.down

   drop_table :contexts_terms
  end
end
