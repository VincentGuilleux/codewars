# The following was a question that I received during a technical interview for an entry level software developer position. I thought I'd post it here so that everyone could give it a go:

# You are given an unsorted array containing all the integers from 0 to 100 inclusively. However, one number is missing. Write a function to find and return this number. What are the time and space complexities of your solution?

def missing_no(nums)
  for i in 0..100
    break unless nums.include? i
    i += 1
  end
  i
end

nums = (0..100).to_a - [5]
pp missing_no(nums)


# 2nd BEST SOLUTION
def missing_no(nums)
  5050 - nums.sum
end

# BEST SOLUTION (not understood)
def missing_no(nums)
  nums.reduce(100, :^)
end

# OTHER SOLUTION
def missing_no(nums)
  ((0..100).to_a - nums).first
end
