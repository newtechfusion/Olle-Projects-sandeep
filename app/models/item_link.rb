class ItemLink < ActiveRecord::Base

  belongs_to :parent_item, :class_name => 'Item'
  belongs_to :child_item, :class_name => 'Item'

end
