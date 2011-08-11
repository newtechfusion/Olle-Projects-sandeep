module TermHelper
   def term_has_context?(context)
      if @term
         @term.contexts.include?(context)
      else
        false
      end
   end



end
