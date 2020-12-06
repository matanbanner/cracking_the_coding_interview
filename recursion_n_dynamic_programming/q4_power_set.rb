def power_set(a)

  if a.size == 0
    return [[]]
  end

  ps_without_a0 = power_set(a[1..-1])

  
  ps_with_a0 = []
  for i in 0..(ps_without_a0.size - 1) do
    ps_with_a0 << ps_without_a0[i] + [a[0]]
  end

  return ps_without_a0 + ps_with_a0
  
end





a = [1,2,3]

puts power_set([1,2]).inspect