class ContextsTerms < ActiveRecord::Migration
  def self.up

       create_table :contexts_terms , :id => false, :force => true do |t|
          t.integer "context_id"
          t.integer "term_id"
        end
  end

  def self.down

   drop_table :contexts_terms
  end
end
