# Split the Roman Numeral string into Roman Symbols (character).
# Convert each symbol of Roman Numerals into the value it represents.
# Take symbol one by one from starting from index 0:
# If current value of symbol is greater than or equal to the value of next symbol, then add this value to the running total.
# else subtract this value by adding the value of next symbol to the running total.

def solution(roman)
  result = 0
  roman_array = roman.chars
  conv_table = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
          }

  i = 0

  until i == roman.length
    current_letter_value = conv_table[roman_array[i]]
    next_letter_value = conv_table[roman_array[i + 1]] if (i + 1) < roman.length
    if next_letter_value.nil? || current_letter_value >= next_letter_value
      result += current_letter_value
    else
      result += (next_letter_value - current_letter_value)
      i += 1
    end
    i += 1
  end

  result
end

pp solution('MCMXC')
# pp solution('IX')
# pp solution('XXI')
# pp solution('I')

# BEST SOLUTION UNDERSTOOD
# def solution(roman)
#   mapping = {
#     'M' => 1000,
#     'D' => 500,
#     'C' => 100,
#     'L' => 50,
#     'X' => 10,
#     'V' => 5,
#     'I' => 1,
#   }

#   digits = roman.scan(/.{1}/).reverse.map{|d| mapping[d]}
#   digits.map.with_index {|d, i| digits[i.zero? ? i : i - 1] > d ? -d : d}.inject(:+)
# end
