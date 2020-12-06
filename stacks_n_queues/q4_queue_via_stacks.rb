puts "q4_queue_via_stacks"
load "stacks_n_queues/stack/stack_list.rb"


class QueueViaStacks
  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  def add(x)
    @s1.push(x)
  end

  def remove
    if isEmpty
      puts "already empty"
      return
    end
    if @s2.isEmpty
      self.transfer
    end
    @s2.pop
  end

  def peek
    if @s2.isEmpty
      self.transfer
    end
    @s2.peek
  end

  def isEmpty
    @s1.isEmpty && @s2.isEmpty
  end

  # private

  def transfer
    while !@s1.isEmpty
      x = @s1.peek
      @s1.pop
      @s2.push(x)
    end
  end

end

q = QueueViaStacks.new

q.add(1)
q.add(2)
q.add(3)
q.add(4)


puts q.peek
q.remove
puts q.peek
q.add(5)
q.add(6)
q.remove
puts q.peek
q.remove
q.remove
q.remove
q.remove
q.remove
puts q.peek




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
