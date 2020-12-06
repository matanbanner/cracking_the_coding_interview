class BinaryTree
  class Node
    attr_accessor :val, :left, :right, :parent

    def initialize(val)
      @val = val
    end
  end

  attr_accessor :root

  def add(val, node = @root)
    if @root == nil
      @root = Node.new(val)
      return
    end

    if val < node.val
      if node.left == nil
        node.left = Node.new(val)
        node.left.parent = node
      else
        add(val, node.left)
      end
    else
      if node.right == nil
        node.right = Node.new(val)
        node.right.parent = node
      else
        add(val, node.right)
      end
    end
  end

  def print_inorder(node = @root)
    print_inorder(node.left) if node.left != nil
    puts node.val
    print_inorder(node.right) if node.right != nil
  end

  def search(val, node = @root)
    if node == nil
      return nil
    end

    if val == node.val
      return node
    end

    if val < node.val
      search(val, node.left)
    else
      search(val, node.right)
    end
  end

  def successor(node)
    # there is right sub tree
    if node.right != nil
      p = node.right
      while p.left != nil
        p = p.left
      end
      return p
    else # no right sub tree
      # no parent
      if node.parent == nil
        return nil
      end

      if node.parent.left == node  # node is a left son
        return node.parent
      else # node is a right son
        while node.parent
          if node.parent.left == node
            return node.parent
          end
          node = node.parent
        end
      end
    end
  end
end



bt = BinaryTree.new
bt.add(4)
bt.add(0)
bt.add(1)
bt.add(2)
bt.add(3)


node = bt.search(3)
succ = bt.successor(node)


puts succ.val 







