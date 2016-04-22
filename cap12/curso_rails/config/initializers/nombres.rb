class Nombres
  @@array ||= ["Luis", "Inma", "Boris", "Hugo"]
  
  def self.add=(nombre)
    @@array << nombre
  end
  
  def self.remove(nombre)
    @@array.delete(nombre)
  end
  
  def self.get
    @@array
  end
end