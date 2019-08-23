=begin 
Growth of a Population
In a small town the population is p0 = 1000 at the beginning of a year. The population regularly increases by 2 percent per year
and moreover 50 new inhabitants per year come to live in the town. How many years does the town need to see its population greater 
or equal to p = 1200 inhabitants?

 At the end of the first year there will be: 
 1000 + 1000 * 0.02 + 50 => 1070 inhabitants
 
 At the end of the 2nd year there will be: 
 1070 + 1070 * 0.02 + 50 => 1141 inhabitants (number of inhabitants is an integer)
 
 At the end of the 3rd year there will be:
 1141 + 1141 * 0.02 + 50 => 1213
 
 It will need 3 entire years.
 More generally given parameters:
 
 p0, percent, aug (inhabitants coming or leaving each year), p (population to surpass)
 the function nb_year should return n number of entire years needed to get a population greater or equal to p.
 aug is an integer, percent a positive or null number, p0 and p are positive integers (> 0)
 
 Examples:
 nb_year(1500, 5, 100, 5000) -> 15
 nb_year(1500000, 2.5, 10000, 2000000) -> 10
 Note: Don't forget to convert the percent parameter as a percentage in the body of your function: 
 if the parameter percent is 2 you have to convert it to 0.02.
=end

def nb_year(p0, percent, aug, p)
  $c = 0
  while p0 < p  
    p0 = (p0 + ((p0/100)*percent+aug)).round(0)
    $c += 1
  end
  $c
end

=begin ############################################# OTHERS SOLUTIONS 
def nb_year(p0, percent, aug, p)
    y = 1
    while (p0 = (p0*(1 + percent.to_f/100) + aug).to_i) < p
      y += 1      
    end
    y
end
----------------------------------------------------------------------
def nb_year(p0, percent, aug, p, year = 0)
  return year if p0 >= p
  nb_year( ( p0 * ( 1 + ( percent / 100.0 ) ) + aug ).floor, percent, aug, p, year + 1 )
end
----------------------------------------------------------------------
ef nb_year(p0, percent, aug, p)
  p <= p0 ? 0 : 1 + nb_year(Integer(p0 * ( 1 + percent / 100.0) + aug), percent, aug, p)
end
----------------------------------------------------------------------
def nb_year(p0, percent, aug, p)
  n = (p0 + p0 * (percent / 100.0) + aug).floor
  n >= p ? 1 : nb_year(n, percent, aug, p) + 1
end
----------------------------------------------------------------------
def nb_year(p0, percent, aug, p, years=0)
  p0 >= p ? years : nb_year(p0 + (percent/100.0*p0).to_i + aug, percent, aug, p, years+1)
end
----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

----------------------------------------------------------------------

=end