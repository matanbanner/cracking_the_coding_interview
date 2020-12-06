def min_operations(arr, graph)
  dst = arr.sort
  src = arr

  d = calc_distances(src, graph)
  d[arr]


  
  
    
end


def calc_distances(src, graph)

  d = {}
  q = [src]
  d[src] = 0
  
  puts "calc"
  
  while !q.empty? do
    v = q.pop
    nvs = graph[v]
    nvs.each do |n|
      if d[n] != nil
        next
      end
      d[n] = d[v] + 1
      q.unshift n
    end
  end
  
  return d
end

def build_perms_graph(arr)
  v_nv = {}
  selected  = arr.map{1}
  vs = calc_perms(arr, selected)
  vs.each do |v|
    v_nv[v] = calc_neighbors(v)
  end
  v_nv
end

def calc_neighbors(arr)
  neighbors = []

  for i in 0..arr.length - 2 do
    for j in i + 1 .. arr.length - 1 do
      old_i = i
      new_arr = arr.dup
      while i < j
        tmp = new_arr[i]
        new_arr[i] = new_arr[j]
        new_arr[j] = tmp
        i += 1
        j -= 1
      end
      i = old_i
      neighbors << new_arr
    end
  end
  neighbors
end

def calc_perms(arr, selected)
  
  sum = 0 
  selected.each {|e| sum += e }
  
  if sum == 0 
    return [[]]  
  end
  
  total_perms = []
  
  for i in 0 .. selected.length - 1 do
    if selected[i] == 0
      next
    end
    
    selected[i] = 0
    perms_without_i = calc_perms(arr, selected)
    selected[i] = 1
    
    perms_without_i.each do |perm|
      perm.push(arr[i])
      total_perms << perm
    end
  end
  
  total_perms
end


#puts calc_neighbors([1,2,3]).inspect
#puts calc_perms([1,2,3], [1,1,1]).inspect


# Call min_operations() with test cases here 

g = build_perms_graph([1,2,3,4,5,6,7,8])



# v_nv.each do |v, nv|
#   puts "#{v.inspect} => #{nv.inspect}"
# end

 calc_distances([1,2,3,4,5,6,7,8], g).inspect
