def to_camel_case(str)
  str[0] = '' if str[0] == '-'
  str[0] = '' if str[0] == '_'
  str1 = str.split(/[-_]/).map(&:capitalize).join
  unless str[0].nil?
    str1[0] = str1[0].downcase unless str[0] == str[0].upcase
  end
  return str1
end

pp to_camel_case('the-stealth-warrior') # returns 'theStealthWarrior'
pp to_camel_case('the-stealth-warrior') == 'theStealthWarrior'

pp to_camel_case('The_Stealth_Warrior') # returns 'TheStealthWarrior'
pp to_camel_case('The_stealth_warrior') == 'TheStealthWarrior'

pp to_camel_case('_the_stealth_warrior') # returns 'theStealthWarrior'
pp to_camel_case('_the_stealth_warrior') == 'theStealthWarrior'

# BEST PRACTISE
def to_camel_case(str)
  str.gsub(/[_-](.)/) { "#{$1.upcase}" }
end
# https://stackoverflow.com/questions/18972089/gsub-1-upcase-is-equivalent-to-capitalize

# 2ND BEST PRACTISE
def to_camel_case(str)
  str.gsub('_', '-').split('-').each_with_index.map{ |x, i| i == 0 ? x : x.capitalize }.join
end
#gsub to substitute - for all _ then split based on - then map capitalize  with exception for index 0
