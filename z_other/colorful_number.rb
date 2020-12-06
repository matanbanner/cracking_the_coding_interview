def is_colorful?(n)
  lookup = {}
  arr = break_to_digits(n)
  
  for win_sz in 1 .. arr.length do
    if !check_mul(arr, win_sz, lookup) 
      return false
    end
  end

  return true

end

def check_mul(arr, win_sz, lookup)
  for i in 0 .. arr.length - win_sz
    j = i + win_sz - 1
    mul = 1
    for k in i .. j do
      mul *= arr[k]
    end
    
    if lookup[mul] != nil
      return false
    else
      lookup[mul] = 'something'
    end
  end
  true
end



def break_to_digits(n)
  digits = []

  while n > 0 do
    dig = n % 10
    n /= 10
    digits << dig
  end

  digits
end


puts is_colorful?(23579)