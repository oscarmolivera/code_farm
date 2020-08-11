=begin 
A left rotation operation on an array shifts each of the array's elements 1 unit
to the left.
For example, if 2 left rotations are performed on array [1,2,3,4,5], then the
array would become [3,4,5,1,2].

Given an array a of n integers and a number, d, perform left rotations on the
array.Return the updated array to be printed as a single line of space-separated
integers.
=end

def rotLeft(arr, d)
  con = arr.length
  new_arr = []
  rotar = d % con
  arr.each.with_index do |item, lugar|
    if lugar >= rotar
      new_arr[lugar - rotar] = item
    else
      new_arr[con - rotar] = item
      con += 1
    end
  end
  new_arr
end

p rotLeft([1,2,3,4,5,6,7,8,9], 1)
=begin ############################################# OTHERS SOLUTIONS 
2) Solucion explicada
La idea es separar el arreglo en dos partes, la primara todos los elementos que 
son igual o superior al numeros de espacios que se deben rotar
[3,, 4, 5, 6, 7, 8, 9], y luego los que sean inferiores [1, 2]. Si el numero de 
espacios a rotar es superior al numero de elementos que tiene un arreglo, se le 
consigue el modulo para reducir ese numero.

con = arr.length
  new_arr = []
  rotar = d % con
  arr.each.with_index do |item, lugar|
    if lugar >= rotar
      new_arr[lugar - rotar] = item
    else
      new_arr[con - rotar] = item
      con += 1
    end
  end
  new_arr

***refactorizar***
  cont = arr.length
  arr.map.with_index do|el, index| 
  end

----------------------------------------------------------------------
3)Solucion 
  return arr if d % a.length == 0
  mod = d % arr.length
  arr.map.with_index{|l, ix| a[ix+mod]}.map.with_index{|m, i| m.nil? ? a[i-mod-1]  : m}

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
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
  p "Modulo de D: #{d % a.length if d > 0}"
  return a if d <= 0
  rotate = d % a.length
  #rotate  a.length-1 ?  rotate = a.length-1
  index = 3

  p a[index] - rotate
  p a[index+1] - rotate
  p a[index+2] - rotate
  p a[index+3] - rotate
  p a[index+4] - rotate
-------------------------------------------------
new_array = []
  (0..(a.length-1)).each do |ciclo|
    p "d: #{[d]}"
    p "ciclo: #{[ciclo]}"
    p "ciclo - d: #{[ciclo - d]}"
    p "Menor?: #{ciclo - d < 0}"
    ciclo - d < 0 ? indice = a.length-1 : indice = ciclo - d
    p "indice: #{indice}"
    p new_array[ciclo] = a[indice]
  end
  new_array
  ------------------------------------------------
   new_array[4] = a[d-3] # 3 - 3 =  0  # 3 - (4 - 1) = 0
 new_array[5] = a[d-2] # 3 - 2 =  1  # 3 - (5 - 3) = 0  
 new_array[6] = a[d-1] # 3 - 1 =  2  # 3 - (6 - 5) = 0
 -----------------------------------------------------
  return a if d % a.length == 0
 mod = d % a.length
 cont = 0
 nw_arr = []
 (0..(a.length()-1)).each do |bucle|
  bucle + mod < a.length ? indice = bucle + mod : indice = cont
  nw_arr[bucle] = a[indice]
  bucle + mod >= a.length ? cont += 1 : cont
 end
 nw_arr
 ----------------------------------------------------
   return a if d % a.length() == 0
  p mod = d % a.length()
  nw_arry = []
  cont=0
  (0..(a.length() -1)).each do |c|
    if c + mod >= a.length() 
      nw_arry[c] = a[cont]
      cont +=1
    else
      nw_arry[c] = a[mod+c]
    end
  end
  nw_arry
=end