def rotate_matrix(a)
  n_layers = a.size / 2
  for l in 0..n_layers - 1
    rotate_layer(a, l)
  end
end

def rotate_layer(a, l)
  n = a.length - 2 * l
  for k in 0..n - 2
    # step 1
    t1 = a[l+k][n-1]
    a[l+k][n-1] = a[l][l+k]
    # step 2
    t2 = a[n-1][n-1-k]
    a[n-1][n-1-k] = t1
    # step 3
    t3 = a[n-1-k][0]
    a[n-1-k][0] = t2
    # step 4
    a[l][l+k] = t3
  end
end




a = [
  [1 ,2  ,3  ,4],
  [5 ,6  ,7  ,8],
  [9 ,10 ,11 ,12],
  [13,14 ,15 ,16]
]


def ppp(a)
  a.each do |row| 
    p row.inspect
  end
end

ppp a
rotate_layer(a, 1)
puts "--------------------"
ppp a
