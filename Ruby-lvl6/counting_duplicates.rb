def duplicate_count(text)
  array = text.downcase.split("")
  array.uniq.count { |e| array.count(e) > 1 }
end

pp duplicate_count('Indivisibilities')

# BEST SOLUTION
def duplicate_count(text)
  ('a'..'z').count { |letter| text.downcase.count(letter) > 1 }
end

# DOC
# https://makandracards.com/makandra/31141-ruby-counting-occurrences-of-an-item-in-an-array-enumerable
