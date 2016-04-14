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

foo(9)
# foo(9, 10) # Con error

bloque_lambda = lambda { puts "Soy un bloque lambda" }
bloque_proc = Proc.new { puts "Soy un bloque Proc" }

bloque_lambda.call
bloque_proc.call

params_lambda = lambda { |x, y| x + y }
params_proc = proc { |x, y| x + y }

# puts params_lambda.call(1) # Error: número de parámetros incorrectos
puts params_lambda.call(1, 2)
# puts params_lambda.call(1, 2, 3) # Error: número de parámetros incorrectos
# puts params_proc.call(1) # Error: y es nil
puts params_proc.call(1, 2)
puts params_proc.call(1, 2, 3)
