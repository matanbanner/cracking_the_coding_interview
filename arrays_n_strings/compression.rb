def compression(s)
  i=0; j=0
  comp = []
  while i <= s.length - 1
    comp << s[i]
    while s[i] == s[j] && j <= s.length - 1
      j += 1
    end
    if j - i > 1
      comp << j - i
    end
    i = j
  end
  return comp
end


puts compression("aaaaaawwwweeeer").inspect