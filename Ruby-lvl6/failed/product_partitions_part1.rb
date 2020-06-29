# SOLUTION (QUE J'AI DU MAL A COMPRENDRE :) )

def prod_int_part(n)
  ans = []
  stack = [[n, 2, []]]
  while stack.size.positive?
    v, m, divs = stack.pop # remove and returns the single last el of the array.
    # On the first iteration
    # [n, 2, []] => v contains n, m is 2 and divs is an empty array.
    # stack is now an empty array
    for i in m..(v**0.5) + 1 # on itere de 2 a racine de n + 1
      if (v % i).zero? # si n / i est un entier naturel
        stack.push([v.div(i), i, divs + [i]])
        ans.push(divs + [i, v.div(i)])
      end
    end
  end
  ans.map!(&:sort).uniq!
  ans[0] ? [ans.size, ans.min] : [0, []]
  # sauf si ans est vide, on renvoit un array avec la taille de ans puis le min de ans
end

pp prod_int_part(18)

# DEBUT DE TENTATIVE PERSO

# def prod_int_part(n)
#   count = 0
#   solutions = []
#   i = 2

#   until i == (n - 1)/2
#     pp "i: #{i}"
#     if (n % i).zero?
#       count += 1
#       solutions << [n/i, i]
#     end

#     pp (n % i).zero?
#     pp "count: #{count}"

#     i += 1
#   end
#   solutions
# end

# pp prod_int_part(18)
# pp prod_int_part(60)
# pp prod_int_part(54)

# TEST

# pp prod_int_part(18) == [3, [2, 3, 3]]
# pp prod_int_part(60) == [10, [2, 2, 3, 5]]
# pp prod_int_part(54) == [6, [2, 3, 3, 3]]
# pp prod_int_part(37) == [0, []]
# pp prod_int_part(61) == [0, []]
