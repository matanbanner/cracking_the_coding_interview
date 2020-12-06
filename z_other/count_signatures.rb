def find_signature_counts(arr)
  visited = Array.new(arr.length)
  results = []
  
  
  for i in 0 .. visited.length - 1 do
  
    stack = [] # holds cycle

    while !visited[i]
        stack.push(i)
        visited[i] = true
        i = arr[i]
    end

    cycle_length = stack.length
    
    while !stack.empty? do
      index = stack.pop
      results[index] = cycle_length
    end
    
  end
  
  results
  
end  



puts find_signature_counts([1,2,3,0, 4]).inspect