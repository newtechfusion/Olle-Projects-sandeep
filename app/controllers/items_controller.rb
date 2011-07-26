class ItemsController < ApplicationController

    def index
#      @pp =  Language.find(7)
#
#      puts "--------#{@pp.users.create("login" => 'sandeep6')}"
#     @languages = Language.all

      puts "+++++++++++++++++++++#{Term.find(:all).inspect}"
      @items = Item.all

       respond_to do |format|
         format.html # index.html.erb
         format.xml  { render :xml => @item }
      end
    end

  def show
    @item = Item.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item }
    end
  end

  def new
    @item = Item.new
    @terms = Term.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item }
    end
  end



   def create
        @item = Item.new(params[:item])
        @item.save
     redirect_to items_path
   end

    def update
        params[:item][:term_ids] ||= []

#        @term = Term.find(current_term)
         @item = Item.find(params[:id])
        if @item.update_attributes params[:item]
            flash[:notice] = "Settings have been saved."
            redirect_to edit_item_url(@item)
        else
            flash.now[:error] = @item.errors
            setup_form_values
            respond_to do |format|
                format.html { render :action => :edit}
            end
        end

    end


  def edit
    @terms = Term.find(:all)
    @item = Item.find(params[:id])


  end




 def destroy

    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to(items_url) }
      format.xml  { head :ok }
    end
  end















end
