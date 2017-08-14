# Stack Min: How would you design a stack which, in addition to push and pop, has a function min
# which returns the minimum element? Push, pop and min should all operate in 0(1) time.

class Stack
  def initialize
    @stack = []
  end

  def length
    @stack.length
  end

  def empty?
    @stack.empty?
  end

  def push(ele)
    @stack.push(ele)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end
end

def min_num_stack(array)
  stack = Stack.new
  min_stack = Stack.new

  array.each do |ele|
    stack.push(ele)
    if (min_stack.empty?) || (min_stack.peek > ele)
      min_stack.push(ele)
    end
  end

  min_stack.peek
end

# O(1) lookup for min, pop, push
# Will fix
