# Como se puede restar dos numeros sin utilizar el operador de resta

p ' ################## - Restar dos numeros sin usar el Operador - ###############'
p ' Ingresa el primer numero: '
num1 = gets.chomp.to_i
p ' Ingresa el segundo numero: '
num2 = gets.chomp.to_i


# Mi respuesta, dos arrglos que guarden los elementos del numero 1 y luego elimine tantos elementos del numero 2 para contar lo que queda
num1_array = []
num2_array = []

1.upto(num1).each do
  num1_array << '*'
end

1.upto(num2).each do
  num2_array << '?'
end

num2_array.each do 
  num1_array.pop
end

# Respuesta profesor, dos variables que al compararse por ciclos la tercera registra la diferencia
num3 = num2
rest = 0

begin
  num3 +=1 
  rest += 1
end while  num3 < num1


p " => Mi respuesta Restar: #{ num1 } y #{ num2 } \n es #{num1_array.size}<="
p " => Restar Metodo profesor: #{rest}<= "
