class HomeController < ApplicationController
  def index
  end

  def quienes_somos
  end

  def contacto
    if request.post?
      #raise
      Nombres.add=(params[:nombre])
      redirect_to root_path
    else
      render :text => (Nombres.get.include?(params[:nombre]) ? "Si" : "No")
    end
    
  end

  def servicios
  end

  def localizacion
  end
end
