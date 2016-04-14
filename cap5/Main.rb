require "./Estudiante"
# require "./Matematicas" # Matematicas ya esta en Estudiante.rb

pedrito = Persona.new("Pedro", "Aldomóvar Medina")
pablito = Estudiante.new("Pablo", "Picasso Medina", 10)
la_panadera = Matematicas::CalculadoraPanadera.new
n = 3

puts pedrito
puts pablito

puts "Pablito dice: #{pablito.foo}"
puts "Pablito dice: #{pablito.decirPI}"
puts "Matematicas dice : #{Matematicas::PI}"
puts "Pablito dice: #{pablito.decir2Elevado(n)}"
puts "Matematicas dice : #{Matematicas.pow2(n)}"
puts "La panadera dice que 2 + 2 = #{la_panadera.sumar(2, 2)}"
puts "La china dice que 2 + 2 = #{Matematicas::CalculadoraChina::sumar(2, 2)}"
