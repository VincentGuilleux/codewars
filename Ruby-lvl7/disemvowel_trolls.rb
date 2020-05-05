require 'active_support/core_ext/enumerable'

def disemvowel(str)
  vowels = %w[a e i o u A E I O U]
  str.chars.select { |c| vowels.exclude?(c) }.join
end

pp disemvowel("This website is for losers LOL!")

# BEST ANSWER
def disemvowel(str)
  str.delete('aeiouAEIOU')
end
