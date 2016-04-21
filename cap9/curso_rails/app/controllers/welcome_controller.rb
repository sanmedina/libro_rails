class WelcomeController < ApplicationController
  before_filter :init_title
  # DRY way
  respond_to :html
  # DOESN'T WORK!!!!
  respond_to :xml, :json, :except => :contacto
  
  def init_title
    @title = nil
  end
  
  def index
    @title = "Welcome!!!"
    
    # Not DRY way
    #respond_to do |format|
    #  format.html
    #  format.xml
    #  format.json
    #end
    
    # DRY way
    respond_with # Not necesary actually
    # With arguments
    #respond_with(@user, :location => user_url)
  end
  
  def quienes_somos
    @title = "Quienes somos"
  end
  
  def contacto
    @title = "Contacto"
  end
end
