# Multiplicar dos numeros sin usar el operador

p ' ################# - Multiplicar dos numeros sin usar el Operador - ##############'
p ' Ingresa el primer numero: '
num1 = gets.chomp.to_i
p ' Ingresa el segundo numero: '
num2 = gets.chomp.to_i
result = 0
1.upto(num1).each do
  1.upto(num2).each do
    result += 1
  end
end

p " Resultado: #{ result } "
