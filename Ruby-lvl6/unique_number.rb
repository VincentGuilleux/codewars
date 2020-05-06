def find_uniq(arr)
  counts = Hash.new(0)
  arr.each { |val| counts[val] += 1 }
  counts.reject { |val, count| count > 1 }.keys.join.to_f
end

pp find_uniq([1, 1, 1, 2, 1, 1])

# BEST ANSWER
def find_uniq_best(arr)
  arr.uniq.each { |x| return x if arr.count(x) == 1 }
end

pp find_uniq_best([1, 1, 1, 2, 1, 1])

# BEST ANSWER BIS
def find_uniq(arr)
  arr.uniq.min_by { |n| arr.count(n) }
end
