def count_bits(n)
  sum = 0
  quotient = n
  until quotient.zero?
    remainder = quotient % 2
    quotient /= 2
    sum += remainder
  end
  sum
end

pp count_bits(674259) == 10

# BEST PRACTISE
def count_bits(n)
  n.to_s(2).count "1"
end
# count_bits(674259) == 10



