
=begin
Usuarios en la Base de Datos

En un proyecto para un cliente de Mahisoft, el equipo de desarrolladores descubrió que los identificadores
para usuarios en la base de datos eran números enteros consecutivos, comenzando en 1. Esto es, el primer
usuario tiene identificador 1, el segundo usuario tiene identificador 2 y así en adelante. Sin embargo, al
buscar el identificador del último usuario, notaron que no era igual a la cantidad de usuarios totales. Al
analizar minuciosamente la información, notaron que ningún usuario tenía identificador 13, ni ningún
múltiplo de 13,posiblemente por motivos de superstición.

Se desea que implemente un programa que dado el identificador ID del último usuario, calcule la cantidad
total de usuarios que hay en el sistema, suponiendo que no existen usuarios con identificadores múltiplos de
13.
Especificación de la Entrada

La primera y única linea de la entrada contendrá un entero correspondiente al identificador del último usuario.
Especificación de la Salida

Debe imprimir una unica línea con la cantidad total de usuarios que hay en el sistema.
Ejemplo
Entrada 	Salida
27 	25

    Los usuarios 13 y 26 no existen.

=end

def unlucky_numbers(num)
  num -= (1..num).select{ |n| n if n % 13 == 0}.count
end



# p "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".to_ascii85
p unlucky_numbers(27)
# => 25
p unlucky_numbers(127)
# => 118
=begin

=end
