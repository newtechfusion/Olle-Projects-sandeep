module ItemHelper

   def item_has_term?(term)
      if @item
         @item.terms.include?(term)
      else
        false
      end
   end



    def button_disable?(item)
            @bb =  @item.parent_links.select {|tt|  tt[:child_item_id].to_i == item[:id].to_i }

      if !@bb.empty?
          true
      else
        false
      end

    end




 end
