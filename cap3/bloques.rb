def ejecutar_bloques (func_param)
    par = 3

    puts "Hola estoy dentro de un método"
    yield 5, par
    puts "Después de llamar al método"
    yield func_param
end

def bloque_param (func_param, &bloque)
    puts "Hello!"
    puts bloque
    puts "#!@$"
end

def foo (el_param)
    puts el_param
end

ejecutar_bloques(10) { |variable, var2|
    puts "Soy un bloque! y tu número #{variable} y el otro #{var2}"
}

bloque_param(10) { |variable, var2|
    puts "Soy un bloque! y tu número #{variable} y el otro #{var2}"
}

foo(9, 3)