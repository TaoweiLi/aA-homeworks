class Queue

  def initialize
    @arr = []
  end

  def enqueue(el)
    return @arr.unshift(el)
  end

  def dequeue
    return @arr.push(el)
  end

  def peek
  return @arr[-1]
  end

end