=begin 

=end

def area_circulo(radio)
  (radio**2)*3.1416
end

def suma_elementos (array)
  array.reduce(:+)
end

def inicia_mayuscula? (str)
  str.split('')[0].scan(/^[A-Z]/)
end

def girar_frases (frase)
  palabras = frase.split(' ')
  cantidad = palabras.length
  return frase if cantidad < 2

  nueva_frase = []

  palabras.each do |p|
    nueva_frase << palabras[cantidad-1]
    cantidad -= 1
  end
  nueva_frase.join(' ')
end

def suma_rango (n)
  (1..n).reduce(:+) + (1..n).select{|n| n % 3 ==0 || n % 5 ==0}.reduce(:+)
end

def texting (str)
  matriz = [
    ['a', 'd','g', 'j', 'm', 'p', 't', 'w'], 
    ['b', 'e', 'h', 'k', 'n', 'q', 'u', 'x' ], 
    ['c', 'f', 'i', 'l', 'o', 'r', 'v', 'y' ], 
    ['', '', '', '', '', 's', '', 'z' ], [' ']
  ]
  #str.split('').map{ |c| matriz.select.with_index{ |m, inx|  inx if m.include?(c)}}
  conv = str.split('').map.with_index do |c, indice|
    rep = matriz.map.with_index{|g, inx| inx  if g.include?(c)}.select{|item| item}.join('')
    num = matriz[rep.to_i].map.with_index{|n, ind| ind if n.include?(c)}.select{|item| item}.join('')
   ( num[0].to_i + 2).to_s * (rep[0].to_i + 1)
  end
  conv.map{|z| z == '22222' ? z = ' ' : z}.join('')
end
#p area_circulo(13)
#p suma_elementos([4,6,2.4,1.0,15])
#p inicia_mayuscula?("Hipopotamo negro")
#p girar_frases("Hipopotamo negro")
#p suma_rango (10)
p texting ("yes")

=begin ############################################# OTHERS SOLUTIONS 
2)

----------------------------------------------------------------------
3)

----------------------------------------------------------------------
4)

----------------------------------------------------------------------
5)

----------------------------------------------------------------------
6)

----------------------------------------------------------------------
7)

----------------------------------------------------------------------
8)

----------------------------------------------------------------------
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
=end