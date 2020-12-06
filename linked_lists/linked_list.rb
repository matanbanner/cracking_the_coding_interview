puts "loading linked_list.rb"

class LinkedList
  class Node
    attr_accessor :data, :next
    def initialize(data)
      @data = data
    end
  end

  attr_accessor :head, :tail

  def initialize(head=nil)
    @head = head
  end
  


  # add to head
  def prepend(data)
    n = Node.new(data)
    # empty list
    if @head == nil
      @head = n
      @tail = n
      return
    end
    
    n.next = @head
    @head = n
  end
  
  # add to tail
  def append(data)
    n = Node.new(data)
    # empty list
    if @head == nil
      @head = n
      @tail = n
      return
    end

    @tail.next = n
    @tail  = n
  end

  def print
    p = @head
    while p != nil do
      puts p.data
      p = p.next
    end
  end
  
end


class DoubleLinkedList
  attr_accessor :head, :tail
  class Node
    attr_accessor :data, :next, :prev
    def initialize(data)
      @data = data
    end
  end

  def prepend(data)
    n = Node.new(data)
    if @head == nil
      @head = n
      @tail = n
      return
    end

    @head.prev = n
    n.next = @head
    @head = n
  end

  def append(data)
    n = Node.new(data)
    if @head == nil
      @head = n
      @tail = n
      return
    end
   # ruby has referrece   
    @tail.next = n
    n.prev = @tail
    @tail = n
  end
end