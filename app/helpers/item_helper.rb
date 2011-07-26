module ItemHelper

   def item_has_term?(term)
      if @item
         @item.terms.include?(term)
      else
        false
      end
   end

end
