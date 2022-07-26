# Multiplicar dos numeros sin usar el operador

p ' ################## - Factorizar un numero sin usar el Operador - ###############'
p ' Ingresa el primer numero: '
num1 = gets.chomp.to_i
mul = []
mul[0] = 1
1.upto(num1) do |item|
  mul << mul.last * item
  mul.shift
end

p mul.last