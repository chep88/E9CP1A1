class Catalogo
  attr_accessor :data
  def leer_catalogo
    File.open('catalogo.txt', 'r') { |file| @data = file.readlines }
  end

  def new_catalogo
    data = []
    @data.each do |prod|
      ls = prod.split(', ')
      ls.delete_if { |value| value == ls.last }
      data << ls
    end
    File.open('promedio.txt', 'w') { |file| file.print data }
  end
end

catalogo = Catalogo.new
catalogo.leer_catalogo
catalogo.new_catalogo
