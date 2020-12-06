def one_way(s, t)
  ls = s.size; lt = t.size;
  if ls == lt
    return is_replace(s, t)
  elsif ls + 1 == lt
    return is_insertion(s ,t)
  elsif lt + 1 == ls
    return is_insertion(t ,s)
  else
    return false
  end
end



def is_insertion(s, t)
  i = 0; j = 0
  found_diff = false
  while i < s.length - 1  
    if s[i] != t[j]
      if found_diff
        return false
      else
        found_diff = true
        j += 1
        next
      end
    end
    i += 1
    j += 1
  end
  return true
end

def is_replace(s, t)
  found_diff = false
  for i in 0..s.length - 1
    if s[i] != t[i]
      if found_diff
        return false
      else
        found_diff = true
      end
    end
  end
  return true
end

puts one_way("abc123", "abc3")