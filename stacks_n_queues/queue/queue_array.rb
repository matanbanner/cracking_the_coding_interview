puts "loading queue_array.rb"

class Queue
  def add(x)
    if @cnt == @array.size
      puts "queue is already full!"
      return
    end

    @array[@last] = x
    @last = inc(@last)
    @cnt += 1
  end
  
  def remove
    if self.is_empty
      puts "queue is already empty!"
      return
    end
    @start = inc(@start)
    @cnt -= 1
  end
  
  def peek
    @array[@start]
  end
  
  def is_empty
    @cnt == 0 
  end

  def initialize(n)
    @array = Array.new(n)
    @start = 0
    @last = 0
    @cnt = 0
  end

  private

  def inc(index)
    @index == @array.size - 1 ? 0 : index + 1
  end

end


q = Queue.new(3)
q.add(1)
q.add(2)
q.add(3)
q.remove
q.add(4)
puts q.peek
q.remove
puts q.peek
q.remove
puts q.peek
q.remove
puts q.peek
q.remove
