def is_perm(s, t)
  hist = Array.new(256, 0)
  add_to_hist(hist, s)
  remove_from_hist(hist, t)
  for i in 0..255
    return false if hist[i] != 0
  end
  true
end

def add_to_hist(hist, s)
  op_on_hist(hist, s, 1)
end

def remove_from_hist(hist, t)
  op_on_hist(hist, t, -1)
end

def op_on_hist(hist, s, op)
  for i in 0..s.length - 1
    hist[s[i].ord] += op
  end
end

# puts is_perm("123456788890","098765488321")
