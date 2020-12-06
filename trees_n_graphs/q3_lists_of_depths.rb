# not tested

lists = []
def list_of_depths(node, level)
  if node == nil
    return
  end
  current_level_list = lists[level]
  current_level_list.append(node.data)
  
  lists[level + 1] = new LinkedList
  list_of_depths(node.left, level + 1)
  list_of_depths(node.right, level + 1)
end

def list_of_depths_main(node)
  return if node == nil
  lists[0] = new LinkedList
  lists[0].append(node.data)
  lists[1] = new LinkedList
  list_of_depths(node.left, 1)
  list_of_depths(node.right, 1)
  return lists
end