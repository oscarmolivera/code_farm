## REGULAR EXPRESIONS
gsub(*args) public
##Returns a copy of str with all occurrences of pattern substituted for the second argument. 

scan(p1) public
#Both forms iterate through str, matching the pattern (which may be a Regexp or a String). 

chomp(*args) public
#Returns a new String with the given record separator removed from the end of str (if present). 

input.match(/\d/) == input[/\d/] #Solo si input.class = STRING, sino da error. para estar mas seguro ==> str.to_s.match(/\d/)

string.each_char.map {|c| (c.ord+1).chr} #recorre cada letra del string y la retorna cambiada, cada letra por su siguiente

Time.now.strftime("%A, %-d/%^B/%Y %l:%M %p") #Dia de la semana, dia con cero adelante, nombre del mes en MAYUS, año con 4 numeros Hora Minuto AM-PM

ARGV.clear 
STDOUT.flush