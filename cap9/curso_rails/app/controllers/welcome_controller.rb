class WelcomeController < ApplicationController
  before_filter :init_title
  # Formats DRY way
  respond_to :html
  # :except DOESN'T WORK!!!!
  respond_to :xml, :json, :except => :contacto
  
  def init_title
    @title = nil
  end
  
  def index
    @title = "Welcome!!!"
    
    # ----------- FOMRATS
    
    # Formats not DRY way
    #respond_to do |format|
    #  format.html
    #  format.xml
    #  format.json
    #end
    
    # Formats DRY way
    #respond_with # Not necesary actually
    # With arguments
    #respond_with(@user, :location => user_url)
    
    # Return .json or .xml
    #@people = ["Diego", "Maria", "Pedro"]
    #respond_to do |format|
    #  format.json { render :json => @people }
    #  format.xml { render :xml => @people }
    #end
    
    # ----------- RENDER
    
    # Respond default page
    #render # not necesary actually
    
    # Respond just text
    #render :text => "Solo texto: #{@title}"
    
    # Use a local template
    #render :action => :contacto
    
    # Use external template
    #render :template => "call_external/index"
    # OR
    #render "call_external/index"
    
    # Return HTML + Ruby
    #render :inline => "<% 100.times do |num| %> <p> <%= num %> </p> <% end %>"
    
    # Return nothing
    #render :nothing => true
    
    # ----------- REDIRECT_TO
    
    # Call a local action
    #redirect_to :action => :contacto
    
    # Call an external action
    #redirect_to :controller => "call_external", :action => "index"
    
    # Call external URI
    #redirect_to "http://www.google.com/"
    
    # Call local URI
    #redirect_to "/welcome/quienes_somos"
    
    # Call controlled back
    #begin
    #  redirect_to :back
    #rescue ActionController::RedirectBackError
    #  redirect_to :action => :quienes_somos
    #end
    
    # ----------- PARAMETERS
  end
  
  def quienes_somos
    @title = "Quienes somos"
    
     # Call root page
     #redirect_to root_path
  end
  
  def contacto
    @title = "Contacto"
  end
end
