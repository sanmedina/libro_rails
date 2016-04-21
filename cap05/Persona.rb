class Persona
    attr_accessor :nombre, :apellidos
    
    def initialize(nombre = "NN", apellidos = "")
      @nombre = nombre
      @apellidos = apellidos
    end
    
    def to_s
      "Hola, mi nombre es #{@nombre} #{@apellidos}."
    end
end