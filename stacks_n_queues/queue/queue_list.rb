puts 'loading queue_list.rb'
class Queue
  def add(x)
    @list.append(x)
  end

  def remove
    if @list.is_empty
      puts 'queue already empty'
      return
    end
    @list.delete_head
  end

  def peek
    @list.top
  end

  def is_empty
    @list.is_empty
  end

  def initialize
    @list = LinkedList.new
  end
end

class LinkedList
  attr_reader :head, :tail
  
  def append(x)
    n = Node.new(x)
    if self.is_empty
      @head = @tail = n
    else
      @tail.next = n
      @tail = n
    end
  end

  def is_empty
    @head == nil
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


q = Queue.new
q.add(1)
q.add(2)
q.add(3)

puts q.peek
q.remove
puts q.peek
q.remove
puts q.peek
q.remove
puts q.peek
q.remove
puts q.peek

q.add(1)
q.add(2)
q.add(3)

puts q.peek
q.remove
puts q.peek
q.remove
puts q.peek
q.remove
puts q.peek
q.remove
puts q.peek

