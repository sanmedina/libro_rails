class HomeController < ApplicationController
  # Use application layout
  layout "application"
  # Use application layout with exception
  #layout "application", :except => :contacto
  
  def index
    if request.get?
      @title = "Index - GET"
    else
      @title = "Index - POST"
    end
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
