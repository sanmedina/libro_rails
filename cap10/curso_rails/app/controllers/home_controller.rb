class HomeController < ApplicationController
  # Use application layout
  layout "application"
  # Use application layout with exception
  #layout "application", :except => :contacto
  
  def index
    @title = "Index"
  end

  def quienes_somos
    @title = "Quiénes somos"
  end

  def contacto
    @title = "Contacto"
  end
  
  def localizacion
    @title = "Localización"
  end
  
  def servicios
    @title = "Servicios"
  end
end
