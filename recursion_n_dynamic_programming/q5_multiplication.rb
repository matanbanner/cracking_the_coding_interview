def mul(a, b)
  if b == 1
    return a
  else
    return a + mul(a, b-1)
  end
end

puts mul(2,3)