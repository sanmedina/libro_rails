class Inventario
    attr_accessor :nombre, :precio_unitario
    
    def initialize(nombre, precio_unitario)
        @nombre, @precio_unitario = nombre, precio_unitario
    end
    
    def precio(cantidad = 1)
        @precio_unitario * cantidad
    end
    
    alias_method 'coste', 'precio'
    
    alias_method 'coste_unitario', 'precio_unitario'
    alias_method 'coste_unitario=', 'precio_unitario='
end

producto = Inventario.new("Tomates", 1.9)
print "Precio por cantidad del metodo precio: "
puts producto.precio(1000)
print "Precio por cantidad del alias: "
puts producto.coste(1000)

puts producto.coste_unitario
puts producto.precio_unitario

producto.coste_unitario = 5
puts producto.precio_unitario