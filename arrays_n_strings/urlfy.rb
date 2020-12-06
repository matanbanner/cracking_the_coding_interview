def replace_spaces(str, true_length)
  n_spaces = cnt_spaces(str, true_length)
  last_index = true_length + 2 * n_spaces - 1
  i = true_length - 1
  while i > 0
    # puts "str[#{i}]=#{str[i]}"
    # puts "last_index=#{last_index}"
    if str[i] == " "
      str[last_index] = "0"
      str[last_index - 1] = "2"
      str[last_index - 2] = "%"
      last_index -= 3
    else
      str[last_index] = str[i]
      last_index -= 1
    end
    i -= 1
  end
end

def cnt_spaces(str, true_length)
  cnt = 0
  for i in 0..true_length - 1
    if str[i] == " "
      cnt += 1
    end
  end
  cnt
end


# puts cnt_spaces("aa bbb cc r asdfadf asdfasdf lkas      ", 33)



str = "aa bbb cc r asdfadf asdfasdf lkas                                  "
puts str
replace_spaces(str, 34)
puts str