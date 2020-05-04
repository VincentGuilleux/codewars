def accum(s)
  string = ''
  s.chars.each_with_index do |e, index|
    string << (e * (index + 1)).capitalize + '-'
  end
  string[0...-1]
end

pp accum("TOflqfA")

# BEST ANSWER

def accum(s)
  s.chars.each_with_index.map { |e, index| (e * (index + 1)).capitalize }.join('-')
end

pp accum("TOflqfA")
