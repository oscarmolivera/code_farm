# Multiplicar dos numeros sin usar el operador

p ' ################## - Dividir dos numeros sin usar el Operador - ###############'
p ' Ingresa el primer numero: '
num1 = gets.chomp.to_i
p ' Ingresa el segundo numero: '
num2 = gets.chomp.to_i

result = []
while num1 >= num2
  result << num2
  num1 -= num2
end

result << num1 unless num1.zero?

response = result.uniq.count == 1 ? result.count : "#{result.count} y fracion"

p " Resultado: #{ response } "
