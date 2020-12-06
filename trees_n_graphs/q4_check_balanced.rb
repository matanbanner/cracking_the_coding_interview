# not tested

def check_balanced(node)
  if height_if_balanced(node) == false
    false
  else
    true
  end
end

def height_if_balanced(node)
  return 0 if node == nil
  left_height = height_if_balanced(node.left)
  right_height = height_if_balanced(node.right)
  
  if left_height == false || right_height == false
    return false
  end

  if abs(left_height - right_height) <= 1
    return max(left_height, right_height)
  end

end