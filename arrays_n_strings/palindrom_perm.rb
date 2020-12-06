def palindrom_perm(s)
  histo = {}
  (0..s.length - 1).each do |i|
    histo[s[i]] ||= 0
    histo[s[i]] += 1
  end

  puts histo

  odd_already_exists = false
  histo.each do |k, v|
    puts "k=#{k} v=#{v}"
    if v.odd?
      if odd_already_exists
        return false
      else
        odd_already_exists = true
      end
    end
  end
  true
end

puts palindrom_perm('abbe')
