# Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

# Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" spinWords( "This is a test") => returns "This is a test" spinWords( "This is another test" )=> returns "This is rehtona test"

# PSEUDO-CODE
# 1. Split the string by word
# 2. count each word with chars >=5 and reverse it
# 3. Recompile the whole string

def spinWords(string)
  answer_array = string.split.map { |word| (word.length > 4 ? word.reverse : word) }.join(' ')
end

pp spinWords('Hey fellow warriors')

# def spinWords(string)
#   word_array = string.split(' ')
#   answer_array = []
#   word_array.each do |word|
#     word.reverse! if word.length > 4
#     answer_array << word
#   end
#   answer_array.join(' ')
# end

# BEST ANSWER
def spinWords(string)
  string.gsub(/\w{5,}/, &:reverse)
end
