def perm(s)
  if s.size == 0
    return []
  end

  if s.size == 1
    return [s]
  end 

  total_perms = []
  
  for i in 0..s.size - 1
    c = s[i]

    
    # puts "c = #{c}"
    s.delete!(c) if c != nil
    puts "s after delete = #{s}"
    
    strings = perm(s)

    strings.each do |s|
      puts "s=#{s} c=#{c}"
      s.prepend(c) if c != nil
      total_perms << s
    end
  end
  total_perms
end


puts perm("ab").inspect