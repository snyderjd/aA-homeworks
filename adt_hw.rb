# Exercise 1 - Stack

class Stack
  def initialize
    # create ivar to store stack here
    @stack = []
  end

  def push(ele)
    # adds an element to the stack
    @stack.push(ele)
  end

  def pop
    # removes one element from the stack
    @stack.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack.last
  end

end

#stack_1 = Stack.new
#stack_1.push("a")
#stack_1.push("b")
#stack_1.push("c")
#stack_1.pop
#stack_1.pop
#p stack_1.peek
#p stack_1

# Exercise 2 - Queue

class Queue
  def initialize
    @queue = []
  end

  def enqueue(ele)
    @queue << ele
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue[0]
  end
end

#queue_1 = Queue.new
#queue_1.enqueue(1)
#queue_1.enqueue(2)
#queue_1.enqueue(3)
#queue_1.dequeue
#p queue_1
#p queue_1.peek

# Exercise 3 - Map

class Map
  def initialize
    @map = []
  end

  def set(key, value)
    if @map.flatten.include?(key) == false
      @map << [key, value]
    else
      @map.each { |pair| pair[1] = value if pair[0] == key }
    end
  end

  def get(key)
    @map.each { |pair| return pair[1] if pair[0] == key }
  end

  def delete(key)
    @map.each { |pair| @map.delete(pair) if pair[0] == key }
  end

  def show
    @map
  end
end

#map_1 = Map.new
#p map_1.set("a", 1)
#p map_1.set("b", 2)
#p map_1.set("c", 3)
#p map_1.show
#p map_1.delete("a")
#p map_1.show
#p map_1.get("b")
#p map_1.set("b", 10)
#p map_1.get("b")
