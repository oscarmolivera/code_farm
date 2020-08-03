=begin 
Hola Oscar, gracias por tu respuesta. Podrías por favor responderme el siguiente ejercicio
# Completar la siguiente funcion para que dado un array de números enteros rote sus posiciones a la izquierda.
# Cada elemento pasa a su posición anterior y el primer elemento a la última posición.
# Ejemplo:
# Dado el array: [1,2,3,4,5] rotar 2 posiciones quedaría: [3,4,5,1,2]
class Array
  def rotate_left(rotate)
  end
end
=end

# Clase con método que cambia el orden de cada elemento segun
# las posiciones entregadas
class Array
  def rotate_left(arreglo, posiciones)
    cont = posiciones
    nvoArr= Array.new(arreglo.length)
    arreglo.each_with_index do |el, i|
      if cont <= arreglo.length && cont != 0
        nvoArr[cont-1] = el
        cont+=1
      else
        nvoArr[0] = el
        cont = 2
      end
    end
    puts nvoArr.to_s
  end
end
arr = [1,2,3,4,5,6,7]
h = Array.new
puts h.rotate_left(arr, 9)

=begin ############################################# OTHERS SOLUTIONS 
2)
class Array
  def rotate_left(arreglo, posiciones)
    arreglo.rotate(posiciones)
  end
end
----------------------------------------------------------------------
=end
