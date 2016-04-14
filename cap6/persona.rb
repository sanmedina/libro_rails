class Persona
  attr_accessor :nombre, :apellidos, :edad
  
  def initialize(nombre, apellidos, edad)
    @nombre = nombre
    @apellidos = apellidos
    raise ArgumentError, "Edad no válida: #{edad}" until edad > 0
    @edad = edad
  end
  
  def informacion_usuario
    "Hola mi nombre es #{@nombre.capitalize} #{@apellidos} y tengo #{@edad} edad"
  end
  
  def mayoria_de_edad
    if @edad < 18
      puts "Eres menor de edad"
    else
      puts "Puedes entrar"
    end
  end
end
