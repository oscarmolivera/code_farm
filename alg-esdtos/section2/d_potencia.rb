# Multiplicar dos numeros sin usar el operador

p ' ################# - Dividir dos numeros sin usar el Operador - ##############'
p ' Ingresa el primer numero: '
num1 = gets.chomp.to_i
p ' Ingresa el segundo numero: '
num2 = gets.chomp.to_i
cont = 1
1.upto(num2) do
  cont *= num1
end

p cont