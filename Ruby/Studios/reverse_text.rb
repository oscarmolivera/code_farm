def reverseText str 
  inicio = str.size()
  new_string = []
  str.split('').each.with_index do |l, i|
    new_string << str[inicio-1]
     inicio -=1
  end
  new_string.join('')
end

def reverseText2 str 
  new_string = []
  str.split('').each.with_index do |l, i|
   ind = "-#{i +1}".to_i
   new_string << str[ind]
  end
  new_string.join('')
end

def reverse_text str 
  str.split('').map.with_index { |l, i| str["-#{i +1}".to_i] }.join('')
end
#p reverseText("miranda")
#p reverseText2("miranda")
#(a.to_s+b.to_s) > (b.to_s+a.to_s) ? (a.to_s+b.to_s) : (b.to_s+a.to_s)

def lima (old, new)
  a = old
  b = new
  p a = num.to_s
  p b = az[0].to_s
  
  
end

def biggest_number arr

end
#[223, 2, 34, 4, 9, 98, 905, 503] ===> #[9, 98, 905, 503, 4, 34, 223, 2]
p biggest_number([223, 2, 34, 4, 9, 98, 905, 503])

#p biggest_number(['223', '2', '34', '4', '9', '98', '905', '503'])
# =>   48706723114560
# => 9989055034342232

=begin
    arr0 = arr.reduce(:*)
  arr2 = [arr[0]]
  arr3 = [arr2.push(arr[1]).reduce(:*)]
  arr4 = [arr3.push(arr[2]).reduce(:*)]
  arr5 = [arr4.push(arr[3]).reduce(:*)]
  arr6 = [arr5.push(arr[4]).reduce(:*)]
  arr7 = [arr6.push(arr[5]).reduce(:*)]
  arr8 = [arr7.push(arr[6]).reduce(:*)]
  arr9 = [arr8.push(arr[7]).reduce(:*)]
  arr0 * arr9[0]
rescue => exception
-----------------------------------------------
  new_arr = []
  old = 0
  arr.each.with_index do |l, i|
    #ol = l.to_s
    new_arr[0].nil? ? ol = l.to_s : ol = new_arr[0].to_s
    nw = arr[i+1].to_s if i+1 <= arr.length
    ab = (ol + nw).to_i
    ba = (nw+ol).to_i
    ab > ba ? new_arr[0] = ab : new_arr[0]= ba
    p "ol: #{ol} | nw: #{nw} | ab: #{ab} | ba: #{ba} "
  end
  new_arr
  -----------------------------------------------------
    nu = []
  arr.each do |b|
    nu.empty? ? nu << b : nu
    a = b.to_s().split('')[0]
    c = nu[0].to_s().split('')[0]
    a > c && a != c ? nu.unshift(b) : nu.push(b)
  end
  nu
  -----------------------------------------------------
    ind = 9
  nums = []
  str = ""
  arr.each do |ciclo|
    num = arr.sort().reverse().select do |g|
      g.to_s[0].to_i == ind
    end
    nums << num.sort()
    ind -=1
  end
  nums.each do |group| 
    if !group.empty?
      str += tander(group)
    end
  end
  str
=end