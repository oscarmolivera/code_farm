=begin 
Sami's spaceship crashed on Mars! She sends a series of SOS messages to Earth
for help. Letters in some of the SOS messages are altered by cosmic radiation
during transmission. Given the signal received by Earth as a string, determine
how many letters of Sami's SOS have been changed by radiation.

For example, Earth receives SOSTOT. Sami's original message was SOSSOS. Two of
the message characters were changed in transit.
Function Description
Complete the marsExploration function in the editor below. It should return an
integer representing the number of letters changed during transmission.
marsExploration has the following parameter(s):
    s: the string as received on Earth
Input Format
There is one line of input: a single string,
Note: As the original message is just SOS repeated
times, 's length will be a multiple of
Constraints
will contain only uppercase English letters, ascii[A-Z].
=end

# Complete the marsExploration function below.
def marsExploration(s)  
  sm = s.split('')
  counter = 0
  for i in (0..(s.length/3)-1) do
    counter += 1 if sm[i*3] != 'S'
    counter += 1 if sm[(i*3)+1] != 'O'
    counter += 1 if sm[(i*3)+2] != 'S'
  end
 counter
end

p marsExploration("SOS SOT S")
p marsExploration("SOS SOS SOS")
p marsExploration("SOS cOc cOc SOS cOS cOS cOS SOS cOS cOS cOS cOS cOS")
p marsExploration("SOSOOSOSOSOSOSSOSOSOSOSOSOS")



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
9)

----------------------------------------------------------------------
10)

=end

=begin THRASH CAN ****************************************************
  #fault = s.gsub(/(SOS)/, '')
  #if fault.size> 0
  #  os = fault.match(/(OS)/).nil? ? os = 0 : os = fault.match(/(OS)/).length()
  #  so = fault.match(/(OS)/).nil? ? os = 0 : os = fault.match(/(OS)/).length()
  #  return "THIS IS OS: #{fault.gsub(/(OS)/, '')}"
  #else
  #  return 0
  #end
  
  #!fault.gsub(/(OS)/, '').match(/(SO)/).nil? ? so = fault.gsub(/(OS)/, '').match(/(SO)/).size() : so = 0
  #!fault.gsub(/(OS)/, '').match(/(SO)/).nil? ? so = fault.gsub(/(OS)/, '').match(/(SO)/).size() : so = 0
  #p so = os.split('SO').count()
  #"XOX XOX XOX XOS XOX XOX XOS"
  #n=len(S)
  #cnt=0
  #for i in range(0,n,3):
  #    if S[i]!='S':
  #        cnt+=1
  #    if S[i+1]!='O':
  #        cnt+=1
  #    if S[i+2] != 'S':
  #        cnt+=1
  #print(cnt)
 # len = s.length()/3
 # cnt = 0
 # (0..len).each do |e|
 #   p e
 # end
=end
