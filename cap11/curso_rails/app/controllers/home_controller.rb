class HomeController < ApplicationController
  def index
  end

  def quienes_somos
  end

  def contacto
  end

  def localizacion
  end

  def servicios
    @id = params[:id] || "NN"
  end
end
