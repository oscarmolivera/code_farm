class Abbreviator

  def self.abbreviate(string)
    new_abre = []
    arr = string.split(/(-|\s|,|\W)/)
    arr.each do |item|
      if item.size > 3
        abre = "#{item[0]}#{item.size-2}#{item[-1]}"
      else
        abre = item
      end
    new_abre << abre
    end
    new_abre.join
  end
  
end

p Abbreviator.abbreviate("banana") #=>  "b4a"
p Abbreviator.abbreviate("double-barrel") #=>  "d4e-b4l"
p Abbreviator.abbreviate("You, and I, should speak.") #=> "You, and I, s4d s3k."