class Product
  def initialize(name, *values)
    @name = name
    @values = values.map(&:to_i)
  end

  def promedio_por_producto
    @values.inject(&:+) / @values.size.to_f
  end
end
products_list = []
data = []

File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each do |product|
  puts product.promedio_por_producto
end
