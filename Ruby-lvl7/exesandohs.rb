def XO(str)
  str.downcase.count('o') == str.downcase.count('x')
end

pp XO('xxxoo')
pp XO('zpzpzpp')
