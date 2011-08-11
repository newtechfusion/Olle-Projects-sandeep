class Item < ActiveRecord::Base
   has_and_belongs_to_many :terms
   has_many :parent_links, :class_name => 'ItemLink', :foreign_key => :parent_item_id
   has_many :child_links, :class_name => 'ItemLink', :foreign_key => :child_item_id

end
