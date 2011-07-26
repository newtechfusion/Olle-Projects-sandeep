class ContextsController < ApplicationController

  def index
#      @pp =  Language.find(7)
#
#      puts "--------#{@pp.users.create("login" => 'sandeep6')}"
#     @languages = Language.all

     
      @contexts = Context.all

       respond_to do |format|
         format.html # index.html.erb
         format.xml  { render :xml => @contexts }
      end
    end

  def show
    @context = Context.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @context }
    end
  end

  def new
    @context = Context.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @context }
    end
  end



   def create
        @context = Context.new(params[:context])
        @context.save
     redirect_to contexts_path
   end

    def update
#        params[:item][:term_ids] ||= []

#        @term = Term.find(current_term)
         @context = Context.find(params[:id])
        if @context.update_attributes params[:context]
            flash[:notice] = "Settings have been saved."
            redirect_to edit_context_url(@context)
        else
            flash.now[:error] = @context.errors
            setup_form_values
            respond_to do |format|
                format.html { render :action => :edit}
            end
        end

    end


  def edit

    @context = Context.find(params[:id])


  end




 def destroy

    @context = Context.find(params[:id])
    @context.destroy

    respond_to do |format|
      format.html { redirect_to(contexts_url) }
      format.xml  { head :ok }
    end
  end











end
