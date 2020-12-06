puts "loading stack array"

class Stack
  def push(x)
    if @index == @size
      puts 'stack is full!'
      return
    end
    @array[@index] = x
    @index += 1
  end
  
  def pop
    if self.isEmpty
      puts 'stack is already empty!'
      return
    end
    @index -= 1
  end

  def peek
    @index > 0 ? @array[@index - 1] : nil
  end

  def isEmpty
    @index == 0
  end

  def initialize(n)
    @array = Array.new(n)
    @size = n
    @index = 0
  end
end


s = Stack.new(3)
s.push(1)
s.push(2)
s.push(3)
puts s.peek
s.pop
puts s.peek
s.pop
puts s.peek
s.pop
puts s.peek
s.pop

