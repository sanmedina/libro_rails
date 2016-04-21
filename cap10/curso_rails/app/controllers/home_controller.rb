class HomeController < ApplicationController
  # Use application layout with exception
  layout "application", :except => :contacto
  
  def index
  end

  def quienes_somos
  end

  def contacto
  end
end
