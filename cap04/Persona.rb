class Persona
  attr_accessor :edad # Lectura y escritura
  attr_reader :nombre # Solo lectirua
  attr_writer :foo # Solo escritura
  @@piernas = 2 # Atributo de clase
  
  # Constructor
  def initialize(nombre)
    @nombre = nombre
    @edad = 0
  end
  
  # Método de clase
  def self.identificarse
    "Soy una persona"
  end
  
  def self.piernas
    @@piernas
  end
  
  # Métodos de instancia
  def saludar
    "Hola, mi nombre es #{@nombre}. Tengo #{@edad} año/s."
  end
  
  def mi_foo
    "Mi foo es #{@foo}"
  end
  
  def repetir(palabra)
    "Digo: #{palabra}"
  end
  
  def hueco_de_seguridad
    soy_privado
  end
  
  # To String
  def to_s
    s = "Mis datos son:\n"
    s += "Nombre: #{@nombre}\n"
    s += "Edad: #{@edad}\n"
    s += "Foo: #{@foo}\n"
    
    return s
  end
  
  # Intenta reconocer métodos mal escritos
  def method_missing(method, *args)
    puts "El método se llama #{method}."
    puts "Sus argumentos son: #{args.join(",")}." unless args.nil?
    
    if method.to_s =~ /^repetir(.*)$/
      self.repetir(args[0])
    elsif method.to_s =~ /^identificarse(.*)$/
      Persona.identificarse
    else
      # Llama al method_missing del padre por si puede resolver el problema
      super(method, args)
    end
  end
  
  # Métodos privados. También existen protegidos.
  private
  def soy_privado
    "Nadie me puede llamar, jojojojojo"
  end
end

# Nace Ricardo
ricardo_obj = Persona.new("Ricardo")
# Atributos que se pueden leer
puts ricardo_obj.nombre
puts ricardo_obj.edad

# Llamado a métodos de instancia
puts ricardo_obj.saludar
puts ricardo_obj.mi_foo
puts ricardo_obj.repetir("mamá")
puts ricardo_obj.hueco_de_seguridad

# Atributo de clase
puts Persona.piernas
# Llamado a método de clase
puts Persona.identificarse

# Atributos que se pueden escribir
ricardo_obj.edad = 2
ricardo_obj.foo = "fooh!"
# Nuevos valores
puts ricardo_obj.saludar
puts ricardo_obj.mi_foo

# Llamado a ToString
puts ricardo_obj.to_s

# Llamado a métodos mal escritos
puts ricardo_obj.repetiroe("papá")
puts ricardo_obj.identificarse

# Llamado a método singleton
asocial = Persona.new("¿le importa?")
def asocial.identificarse
  "*le escupe en la cara*"
end
puts asocial
puts asocial.identificarse
