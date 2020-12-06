def validate_bst(node)
  if is_leaf(node)
    return [node.data, node.data]
  end

  left_res = validate_bst(node.left)
  right_res = validate_bst(node.right)
  
  if left_res && right_res == false
    return false
  end

  min_left, max_left = left_res
  min_right, max_right = right_res


  if max_left <= node.data && node.data < min_right
    return [min_left, max_right]
  else
    return false
  end




end