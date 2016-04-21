require "./Matematicas"
require_relative "Persona"

class Estudiante < Persona
  include Matematicas
  
  attr_accessor :curso
    
  def initialize(nombre = "", apellidos = "", curso = -1)
    super(nombre, apellidos)
    initialize_math
    @curso = curso
  end
    
  def decirPI
    "PI es igual a #{Matematicas::PI}"
  end
  
  def decir2Elevado(n)
    "2 elevado a la #{n} es igual a #{pow2(n)}"
  end
  
  def to_s
    super_s = super
    super_s += " Estoy en #{@curso}."
  end
end