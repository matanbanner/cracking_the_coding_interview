puts "loading q5"
require_relative "linked_list"

def sum_lists_rev(l1, l2)
  p1 = l1.head; p2 = l2.head
  carry = 0
  l3 = LinkedList.new
  
  while p1 != nil || p2 != nil
    if p1 == nil
      d1 = 0 
      d2 = p2.data
      p2 = p2.next
    elsif p2 == nil
      d2 = 0 
      d1 = p1.data
      p1 = p1.next
    else
      d1 = p1.data
      d2 = p2.data
      p1 = p1.next
      p2 = p2.next
    end
    val = d1 + d2 + carry
    l3.append(val % 10)
    carry = val / 10
  end

  if carry == 1
    l3.append(1)
  end

  return l3
end


def sum_lists_rev_recurr(h1, h2, c = 0)
  if h1 == nil && h2 == nil && c == 0
    return nil
  end

  val = c
  val += h1.data if h1 != nil
  val += h2.data if h2 != nil 

  c = val / 10
  d = val % 10


  h3 = sum_lists_rev_recurr(
    h1 ? h1.next : nil, 
    h2 ? h2.next : nil, 
    c
    )
  new_node = LinkedList::Node.new(d)
  new_node.next = h3
  return new_node
end












list1 = LinkedList.new
list1.append(1)
list1.append(8)
list1.append(5)
list1.append(5)
list1.append(5)

list1.print
puts "-----"

list2 = LinkedList.new
list2.append(7)
list2.append(9)
list2.append(1)

list2.print
puts "-----"

head3 = sum_lists_rev_recurr(list1.head, list2.head)
list3 = LinkedList.new(head3)
list3.print
puts "-----"