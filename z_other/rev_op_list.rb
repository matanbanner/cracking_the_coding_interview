class Node
  attr_accessor :data, :next
  def initialize(x)
    @data = x
  end
end

class LinkedList
  attr_accessor :head, :tail

  
  def add(x)
    new_node = Node.new(x)
    if @head == nil
      @head = @tail = new_node
    else
      @tail.next = new_node
      @tail = @tail.next
    end
  end

  def self.init_with_head(head)
    curr = head

    while curr do
      prev = curr
      curr = curr.next
    end

    tail = prev

    ll = self.new
    ll.head = head
    ll.tail = tail

    ll

  end

  def print
    s = ""
    curr = @head
    while curr do
      s += "-> #{curr.data} "
      curr = curr.next
    end
    puts s
  end
end


def rev(head)
  curr = head
  
  while curr do
    
    prev = curr
    
    if curr.data % 2 == 1
      prev = curr
      curr = curr.next
    end


    x = curr
    y = curr.next

    while y && y.data % 2 == 0 do
      z = y.next
      y.next = x

      x = y
      y = z
    end

    t = prev.next
    prev.next = x
    t.next = y

    curr = y

  end
end


def rev2(head)
  curr = head

  while curr do
    # finding prev head sublist
    while curr && curr.data % 2 == 1 do
      prev = curr
      curr = curr.next
    end

    return head if curr == nil

    # running sub list
    x = curr
    y = curr.next

    while y && y.data % 2 == 0 do
      z = y.next
      y.next = x

      x = y
      y = z
    end

    if prev == nil
      curr.next = y
    else
      head_sub = prev.next
      prev.next = x
      head_sub.next = y
    end

    curr = y
  end

  if curr
    return curr
  else
    return head
  end


end

ll = LinkedList.new

[1, 2, 8, 9, 12, 16, 13, 15, 40, 30, 20, 10, 1].each do |x|
  ll.add(x)
end

ll.print

puts "-------------------"


rev_head = rev2(ll.head)

puts rev_head.data

rev_ll = LinkedList.init_with_head(rev_head)

rev_ll.print







