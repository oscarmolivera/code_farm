def anagrama (str1, str2)
  str1.downcase.split('').sort == str2.downcase.split('').sort
end

p anagrama("Mariguana", "Fluster")
