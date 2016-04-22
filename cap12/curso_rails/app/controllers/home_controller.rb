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
    if request.post?
      image = params[:archivo]
      p "image:", image
      name_image = image.original_filename
      p "name_image:", name_image
      is_png = /.png$/.match(name_image)
      p "is_png:", is_png
      
      if is_png
        route = "/home/dmedina/Desktop/" + name_image
        File.open(route, "wb") { |f| f.write(image.read) }
      end
    end
    
    redirect_to root_path
  end

  def localizacion
  end
end
