puts "loading stack_list.rb"

class Stack
  def push(x)
    @list.prepend(x)
  end
  
  def pop
    @list.delete_head
  end

  def peek
    @list.top
  end

  def isEmpty
    @list.head == nil
  end

  def initialize
    @list = LinkedList.new
  end
end

class LinkedList
  attr_reader :head
  
  def prepend(x)
    n = Node.new(x)
    n.next = @head
    @head = n
  end
  
  def delete_head
    if @head != nil
      @head = @head.next
    end
  end

  def top
    @head != nil ? @head.data : nil
  end
end

class Node
  attr_reader :data
  attr_accessor :next

  def initialize(x)
    @data = x
  end
end


# s = Stack.new
# s.push(1)
# s.push(2)
# s.push(3)
# puts s.peek
# s.pop
# puts s.peek
# s.pop
# puts s.peek
# s.pop
# puts s.peek


