class HomeController < ApplicationController
  def index
    @titulo = "Estamos en la página principal"
  end

  def quienes_somos
  end

  def contacto
    @titulo = "Estamos en el apartado de contacto"
  end
end
