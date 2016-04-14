require "./persona"

begin
  colado = Persona.new("Minime", "Evil Medina", -1)
  puts colado
  rescue Exception => e
    puts e.message
end