def is_unique(s)
  bool_arr = Array.new(256)
  for i in 0..s.length - 1
    if bool_arr[s[i].ord] != nil
      return false
    else
      bool_arr[s[i].ord] = 1
    end
  end
  return true
end
