  class Stack
    def initialize
      @arr_stack = []
    end

    def push(*el)
      @arr_stack.push(*el)
      return @arr_stack
    end

    def pop
      return @arr_stack.pop
    end

    def peek
      return @arr_stack[-1]
    end
  end

# s = Stack.new
# # p s
# # s.push("a")
# # p s
# s.push([1], 2, "b")
# p s
# p s.pop
# p s.peek