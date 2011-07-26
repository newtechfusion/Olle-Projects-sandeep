class TermsController < ApplicationController


    def index
#      @pp =  Language.find(7)
#
#      puts "--------#{@pp.users.create("login" => 'sandeep6')}"
#     @languages = Language.all

      puts "+++++++++++++++++++++#{Context.find(:all).inspect}"
      @terms = Term.all

       respond_to do |format|
         format.html # index.html.erb
         format.xml  { render :xml => @term }
      end
    end

  def show
    @term = Term.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @term }
    end
  end

  def new
    @term = Term.new
    @contexts = Context.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @term }
    end
  end



   def create
        @term = Term.new(params[:term])
        @term.save
     redirect_to terms_path
   end

    def update
        params[:term][:context_ids] ||= []

#        @term = Term.find(current_term)
         @term = Term.find(params[:id])
        if @term.update_attributes params[:term]
            flash[:notice] = "Settings have been saved."
            redirect_to edit_term_url(@term)
        else
            flash.now[:error] = @term.errors
            setup_form_values
            respond_to do |format|
                format.html { render :action => :edit}
            end
        end

    end


  def edit
    @contexts = Context.find(:all)
    @term = Term.find(params[:id])


  end




 def destroy

    @term = Term.find(params[:id])
    @term.destroy

    respond_to do |format|
      format.html { redirect_to(terms_url) }
      format.xml  { head :ok }
    end
  end












end
