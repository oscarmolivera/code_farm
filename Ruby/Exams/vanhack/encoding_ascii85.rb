=begin
ASCII85 is a binary-to-ASCII encoding scheme that's used within PDF and Postscript, and which provides data-size
savings over base 64. Your task is to extend the String object with two new methods, toAscii85 (to_ascii85 in ruby) and
fromAscii85 (from_ascii85 in ruby), which handle encoding and decoding ASCII85 strings.

As Python does not allow modifying the built-in string class, for Python the task is to provide functions toAscii85(data)
and fromAscii85(ascii85), which handle encoding and decoding ASCII85 strings (instead of string object methods).

As Swift strings are very picky about character encodings (and don't take kindly to storing binary data), in Swift,
extend Data with a toAscii85 method and String with a fromAscii85 method.

The toAscii85 method should take no arguments and must encode the value of the string to ASCII85, without any line
breaks or other whitespace added to the native ASCII85-encoded value.

Example:

    'easy'.toAscii85() should return <~ARTY*~>
    'moderate'.toAscii85() should return <~D/WrrEaa'$~>
    'somewhat difficult'.toAscii85() should return <~F)Po,GA(E,+Co1uAnbatCif~>

The fromAscii85 method should take no arguments and must decode the value of the string (which is presumed to be ASCII85-encoded text).
=end

class String
  def to_ascii85
    body = self.each_byte.each_slice(4).map do |bytes|
      value = bytes.map{|b| b.to_s(2).rjust(8,'0')}.join.to_i(2)
    end
  end
end


# p "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".to_ascii85
p "12345".to_ascii85
p "DCODE".to_ascii85

=begin
*Mio*Mio*Mio*Mio*Mio*Mio*Mio*Mio*Mio*Mio*Mio*Mio*Mio*Mio*Mio*Mio
  class String
    def to_ascii85
      # encode this string as ASCII85
      arry = []
      str_32 = self.each_char.map(&:ord).map{ |chr| "000#{chr.to_s(2)}"[-8..-1] }.join('')
      (0..str_32.size/32).each do |cicle|
        num = str_32.chars.slice((cicle * 32)..(31 * (cicle + 1)) + cicle).join('')
        num.size < 32 ? arry << (num + ('0' * 32)).chars.slice(0..31).join('').to_i(2) : arry << num.to_i(2)
      end
      arry
    end

    def from_ascii85
      # decode this string from ASCII85
    end
  end
  ------------------------111111111111111--------------------------
  class String
  def to_ascii85
    blocks = chars.each_slice(4).map do |block|
      number = block.join.ljust(4, 0.chr).unpack('N').first
      encode_block(number)[0..(block.size)].gsub('!!!!!', 'z')
    end

    "<~#{blocks.join}~>"
  end

  def from_ascii85
    gsub('z', '!!!!!').gsub(/\s+/, '').chars[2..-3].each_slice(5).map do |block|
      number = decode_block(block)
      [number].pack('N')[0..(block.size - 2)]
    end.join
  end

  private

  def encode_block(number)
    Array.new(5) { (number % 85 + 33).chr.tap { number /= 85 } }.reverse.join
  end

  def decode_block(block)
    5.times.reduce(0) { |a, e| a + ((block[e] || 'u').ord - 33) * 85**(4 - e) }
  end
end
  -------------------------222222222222222-----------------------
  class String
  def to_ascii85
    body = self.each_byte.each_slice(4).map do |bytes|
      value = bytes.map{|b| b.to_s(2).rjust(8,'0')}.join.to_i(2)
      next 'z' if value.zero? && bytes.size == 4
      pad = 4 - bytes.size
      value <<= 8 * pad
      value, b5 = value.divmod 85
      value, b4 = value.divmod 85
      value, b3 = value.divmod 85
      b1, b2 =value.divmod 85
      [b1, b2, b3, b4, b5].map{|b| (b+33).chr}[0..bytes.size].join
    end.join
    "<~#{body}~>"
  end

  def from_ascii85
    code = self[2...-2].gsub(/\s/, '').gsub('z', '!!!!!')
    code.each_byte.each_slice(5).map do |bytes|
      size = bytes.size
      bytes += ['u'.ord] * (5-size)
      bytes.reverse
           .map.with_index{|b, idx| (b-33) * 85**idx}.sum
           .to_s(2).rjust(32, '0')
           .each_char.each_slice(8).map{|bytes| bytes.join.to_i(2).chr}
           .join[0...size-1]
    end.join
  end
end
3  -------------------333333333333333333333--------------------------

class String
  def to_ascii85
    "<~" +
    chars.each_slice(4).map {|s|
      n = s.join.ljust(4, "\0").unpack("B*").first.to_i(2)
      next ?z if n.zero? && s.size == 4
      5.times.reduce([]) {|m, i|
        x, n = n.divmod(85 ** (3 - i + 1));
        m << (x + 33).chr
      }.first(s.size + 1).join
    }.join + "~>"
  end

  def from_ascii85
    gsub(/\s/,"").gsub(?z, "\u0000"*5).chars[2..-3].each_slice(5).map {|s|
      next "\u0000"*4 if s.join == "\u0000" * 5
      [s.join.ljust(5, ?u).unpack("c*").reduce(0) {|m, x| m * 85 + x - 33 }].pack("L*").reverse[0...s.size-1]
    }.join
  end
end
------------------------44444444444444444444------------------------
class String
  def from_ascii85
    encoded = self[2...-2].gsub(/\s/, '').gsub(/z/, '!!!!!')
    
    padding = encoded.length % 5 == 0 ? 0 : 5 - encoded.length % 5
    encoded += 'u' * padding

    encoded = encoded.unpack('B*').first.split('').each_slice(8).map(&:join).map { |n| n.to_i(2) }

    encoded = encoded.each_slice(5).map do |numbers| 
      from_base85(numbers).to_s(2).rjust(32, '0')
    end.join

    encoded = [encoded].pack('B*')
    encoded = encoded[0...-padding] unless padding == 0
    encoded
  end

  def to_ascii85
    encoded = self.unpack('B*').first.split('').each_slice(32).map(&:join).map { |bytes| bytes.ljust(32, '0') }
    encoded = encoded.map do |n| 
      to_base85(n.to_i(2))
    end

    encoded = encoded.map.with_index do |n, i| 
      word = n.map { |n85| (n85 + 33).chr }.join
      word.gsub!(/!{5}/, 'z') unless i == encoded.count - 1 && self.length % 4 != 0
      word
    end.join

    encoded = encoded[0...-(4 - self.length % 4)] unless self.length % 4 == 0

    "<~#{encoded}~>"
  end
end
------------------------------5555555555555----------------------------
def to_base85(number, order = 4)
  return [number] if order == 0

  current = 0

  while number >= 85 ** order do
    number -= 85 ** order
    current += 1
  end

  [current] + to_base85(number, order - 1)
end

def from_base85(numbers)
  numbers.map.with_index do |n85, i|
    (n85 - 33) * (85 ** (numbers.count - i - 1))
  end.inject(&:+)
end

class String
  def from_ascii85
    encoded = self[2...-2].gsub(/\s/, '').gsub(/z/, '!!!!!')
    
    padding = encoded.length % 5 == 0 ? 0 : 5 - encoded.length % 5
    encoded += 'u' * padding

    encoded = encoded.unpack('B*').first.split('').each_slice(8).map(&:join).map { |n| n.to_i(2) }

    encoded = encoded.each_slice(5).map do |numbers| 
      from_base85(numbers).to_s(2).rjust(32, '0')
    end.join

    encoded = [encoded].pack('B*')
    encoded = encoded[0...-padding] unless padding == 0
    encoded
  end

  def to_ascii85
    encoded = self.unpack('B*').first.split('').each_slice(32).map(&:join).map { |bytes| bytes.ljust(32, '0') }
    encoded = encoded.map do |n| 
      to_base85(n.to_i(2))
    end

    encoded = encoded.map.with_index do |n, i| 
      word = n.map { |n85| (n85 + 33).chr }.join
      word.gsub!(/!{5}/, 'z') unless i == encoded.count - 1 && self.length % 4 != 0
      word
    end.join

    encoded = encoded[0...-(4 - self.length % 4)] unless self.length % 4 == 0

    "<~#{encoded}~>"
  end
end

=end

