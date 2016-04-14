module Matematicas
  PI = 3.1416
  attr_accessor :foo
  
  def initialize_math
    @foo = "Nada"
  end
  
  def self.pow2(n)
    print " En Matematicas "
    1 << n
  end
  
  def pow2(n)
    print " En Instancia "
    1 << n
  end
  
  class CalculadoraPanadera
    def sumar(x, y)
      x + y
    end
    
    def restar(x, y)
      x - y
    end
    
    def multiplicar(x, y)
      x * y
    end
    
    def dividir(x, y)
      x / y
    end
  end
  
  module CalculadoraChina
    def CalculadoraChina.sumar(x, y)
        x + y + y - 10
    end
  end
  
end
