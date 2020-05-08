def nb_year(p0, percent, aug, p)
  year = 0
  percent = percent * 0.01
  pp percent
  while p0 < p
    p0 += (p0 * percent).to_i + aug
    pp p0
    year += 1
  end
  year
end

pp nb_year(1500, 5, 100, 5000)
pp nb_year(1_500_000, 2.5, 10_000, 2_000_000) == 10
