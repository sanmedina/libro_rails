class WelcomeController < ApplicationController
  before_filter :init_title
  # DRY way
  respond_to :html, :xml, :json
  
  def init_title
    @title = "Welcome!!!"
  end
  
  def index
    # Not DRY way
    #respond_to do |format|
    #  format.html
    #  format.xml
    #  format.json
    #end
    
    # DRY way
    respond_with
    # With arguments
    #respond_with(@user, :location => user_url)
  end
end
