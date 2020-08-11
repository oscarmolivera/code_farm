def todo(arry)
	
	arry.each do |item|
	puts arry[("-#{item.to_s}").to_i]
		
	end
	#new_arry
end

puts todo([1, 2, 3, 4, 5, 6, 7, 8, 9]).to_s