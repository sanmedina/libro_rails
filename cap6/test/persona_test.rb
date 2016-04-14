require 'test/unit'
require_relative '../persona.rb'

class PersonaTest < Test::Unit::TestCase
  NOMBRE = "Paco"
  APELLIDOS = "Nadal Moreno"
  EDAD = 23
  WRONG_NOMBRE = ""
  WRONG_APELLIDOS = ""
  WRONG_EDAD = -10

  def setup
    @persona = Persona.new(NOMBRE, APELLIDOS, EDAD)
  end

  def test_comprobar_nombre
   assert_equal NOMBRE, @persona.nombre
  end
  
  def test_comprobar_appelidos
    assert_equal APELLIDOS, @persona.apellidos
  end
  
  def test_comprobar_edad
    assert_equal EDAD, @persona.edad
    assert_raise(ArgumentError) {
        Persona.new(WRONG_NOMBRE, WRONG_APELLIDOS, WRONG_EDAD)
    }
  end
  
  def test_informacion_usuario
    assert_equal "Hola mi nombre es #{NOMBRE} #{APELLIDOS} y tengo #{EDAD} edad", @persona.informacion_usuario
  end
end
