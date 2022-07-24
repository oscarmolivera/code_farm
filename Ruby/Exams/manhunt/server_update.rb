#!/usr/bin/env ruby

=begin
Actualización del Servidor
En Mahisoft, ocasionalmente hace falta detener los servicios para realizar una actualización del servidor.
Cada servicio es un proceso iterativo, donde cada iteración del servicio Si toma Ti horas. Para evitar
inconsistencias en el estado del servidor, los servicios solo pueden detenerse antes de iniciar cada
iteración. Por lo tanto, la actualización sólo puede realizarse cuando todos los servicios están en dicho
estado (a punto de iniciar una iteración). ¿Cada cuanto tiempo se puede realizar esta actualización?

Se desea que implemente una función que dado un arreglo con los tiempos Ti de las iteraciones de cada
servicio, calcule el menor período con el que se pueden realizar las actualizaciones del servidor.

Especificación de la Entrada
La primera línea de la entrada contendrá un entero n que representa la cantidad de servicios en ejecución
en el servidor. La segunda línea contendrá n enteros separados por espacios que representan la duración en
tiempo de cada servicio.

Especificación de la Salida
Debe imprimir una única línea con el menor período de tiempo en el que se pueden realizar las actualizaciones
del servidor.

Ejemplo #1
Entrada 	Salida
3
1 3 4 	12

    En el ejemplo, las actualizaciones de servidor pueden realizarse, como mínimo, cada 12 horas.

Ejemplo #2
Entrada 	Salida
4
1 2 5 13 	130
    En el ejemplo, las actualizaciones de servidor pueden realizarse, como mínimo, cada 130 horas.
=end

#
#
#
#
#
#

@argv = []
unless (ARGV[0]).nil?
  File.foreach(ARGV[0]) do |line|
    @argv << line.to_s.gsub("\n", '')
  end
  p @argv
end
