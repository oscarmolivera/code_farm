# Exclude e Include son dos formas de importar codigo desde los modules.
# Cuando usamos Include lo hacemos para que los metodos esten disponibles para la instacia, pero no para la superclase.
# A la inversa, Extends, importa el codigo para la clase, mas no para la instancia de la clase.


module Thing
  def imprime
    puts 'Thing' + " #{2*2}!"
  end
end

module Another
  def expresa
    puts 'Object' + " #{3*3}!"
  end
end

class Some
  include Thing
  extend Another
end
# Error! este metodo no existe para la clase
# Some.imprime

# Para Include, primero se instancia, y luego los metodos del modulo estan disponibles
sm = Some.new
sm.imprime

# Error! este metodo no esta disponible para la instancia.
# sm.expresa

# Con Extend, la clase puede acceder a los metodos del modulo nativamente.
Some.expresa


class Listado
  @@list = 0

  def list
    @@list += 1
  end

  @@list
end

puts Listado.list