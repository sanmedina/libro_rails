class WelcomeController < ApplicationController
  before_filter :init_title
  # Enable POST test
  skip_before_action :verify_authenticity_token, :only => :quienes_somos
  # Formats DRY way
  respond_to :html
  # :except DOESN'T WORK!!!!
  respond_to :xml, :json, :except => :contacto
  
  def init_title
    @title = nil
    flash[:notice] = "Nada" until flash[:notice]
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
    
    # Add parameter
    #redirect_to :action => :quienes_somos, :name => "Fernando", :last => "Medina", :arr => [0, 1, 2]
    
    # ----------- FLASH
    flash[:notice] = "Hey! Uno"
  end
  
  def quienes_somos
    @title = "Quienes somos"
    
    # ----------- REDIRECT_TO
    
    # Call root page
    #redirect_to root_path
     
    # ----------- PARAMETERS
     
    # Read parameters
    @name = params[:name] ? params[:name] : "NN"
    @last = params[:last] ? params[:last] : "NL"
    @arr = params[:arr] ? params[:arr] : []
     
    # ----------- ENVIRONMENT VARIABLES
     
    @action = action_name
    @controller = controller_name
    @is_get = request.get?
    @is_post = request.post?
    # DOESN'T WORK!!!
    @is_http_request = request.xml_http_request? || "."
  end
  
  def contacto
    @title = "Contacto"
  end
end
