def test(str)
  #str[/\d/].to_s ? true : false
  #str.to_s.match(/\d/) ? true : false
  newStr = str.each_char.map{|c| (c.ord + 1).chr}
  #newStr.join('')
end


p test("2546644")