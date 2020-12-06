puts "loading q4"
require_relative "linked_list"

def pivot(list, x)
  current = list.head
  while current.next != nil
    if current.next.data < x
      # move current.next to the top of list
      temp = current.next
      # remove
      current.next = current.next.next
      # put at the head
      temp.next = list.head
      list.head = temp
    else
      current = current.next
    end
  end
end




list = LinkedList.new
list.append(1)
list.append(8)
list.append(5)
list.append(4)
list.append(2)
list.append(40)
list.append(40)
list.append(3)
list.append(3)
list.append(40)
list.append(2)
list.print
puts "--------"
pivot(list, 40)
list.print