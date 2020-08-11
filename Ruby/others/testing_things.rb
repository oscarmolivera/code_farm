def test(str)
  #str[/\d/].to_s ? true : false
  #str.to_s.match(/\d/) ? true : false
  newStr = str.each_char.map{|c| (c.ord + 1).chr}
  #newStr.join('')
end


p test("2546644")

def calcMissing(readings)
  (1..readings.length).each do |item|
    format = /(\t)(\d+).(\d+)?/
    temp = readings[item].to_s.scan(format)
    p temp[0][1] + '.' + temp[0][2] if !temp[0].empty? || !temp[0][1].empty
  end
end