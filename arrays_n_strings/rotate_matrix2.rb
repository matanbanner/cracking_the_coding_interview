def rotate_matrix(mat)
  n = mat.length
  num_layers = (n % 2 == 0) ? n/2 : n/2 + 1
  for l in 0..num_layers-1
    rotate_layer(mat, l)
  end
end

def rotate_layer(mat, l)
  
end