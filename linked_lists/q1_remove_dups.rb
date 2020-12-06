puts "loading q1"
require_relative "linked_list"

def remove_dups_old(head)
  if head == nil || head.next == nil
    return
  end
  p = head
  q = head
  
  while p.next != nil
    while  q != nil && q.next != nil
      if q.next.data == p.data
        q.next = q.next.next
        next
      end
      q = q.next
    end
    p = p.next
    q = p
  end
end

def remove_dups(head)
  current = head
  while current != nil
    runner = current
    while runner.next != nil
      if runner.next.data == current.data
        runner.next = runner.next.next
      else
        runner = runner.next
      end
    end
    current = current.next
  end
end


list = LinkedList.new
list.append(1)
list.append(1)
list.append(3)
list.append(4)
list.append(2)
list.append(3)
list.append(3)
list.append(40)
list.append(2)
list.print
puts "--------"
remove_dups(list.head)
list.print



