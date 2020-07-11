# Write a function named first_non_repeating_letter that takes a string input, and returns the first character that is not repeated anywhere in the string.

# For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, and occurs first in the string.

# As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

# If a string contains all repeating characters, it should return an empty string ("") or None -- see sample tests.

# PSEUDO-CODE
# Itérer jusqu'au premier non doublon

def first_non_repeating_letter(s)
  array = s.downcase.split('')
  t = array.map { |char| array.count(char) }
  pos = t.index(1)
  if pos.nil?
    return ""
  else
    s.split('')[pos]
  end
end

pp first_non_repeating_letter('')
pp first_non_repeating_letter('sTress')

# BEST SOLUTION
def first_non_repeating_letter(s)
  s.chars.find {|i| s.downcase.count(i)==1 || s.upcase.count(i)==1} || ""
end

# Test.describe('Simple Tests') do
#   it('should handle simple tests') do
#     Test.assert_equals(first_non_repeating_letter('a'), 'a')
#     Test.assert_equals(first_non_repeating_letter('stress'), 't')
#     Test.assert_equals(first_non_repeating_letter('moonmen'), 'e')
#   end
#   it('should handle empty strings') do
#     Test.assert_equals(first_non_repeating_letter(''), '')
#   end
# end
