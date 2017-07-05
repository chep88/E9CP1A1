class Dog
  attr_accessor :nombre, :raza, :color
  def initialize(datos)
    @nombre = datos[:nombre]
    @raza = datos[:raza]
    @color = datos[:color]
  end
  def ladrar
    "#{@nombre} está ladrando!"
  end
end
propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
dog = Dog.new(propiedades)
puts dog.ladrar
