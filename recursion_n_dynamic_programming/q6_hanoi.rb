def hanoi(n, s = 1, m = 2, d = 3)
  if n == 1
    puts "#{s} => #{d}"
    return
  end

  hanoi(n-1, 1, 3, 2)
  puts "#{1} => #{3}"
  hanoi(n-1, 2, 1, 3)
end

hanoi(3)