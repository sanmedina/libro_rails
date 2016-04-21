require_relative 'Persona.rb'

class Trabajador
  include Persona
  
  attr_accessor :nombre
  
  def initialize(nombre)
    @nombre = nombre
  end

end

trabajador = Trabajador.new("Juan")
trabajador.mostrar_nombre
trabajador.nombre
