
class GraphNode
  attr_accessor :val, :neighbors

  def initialize(val)
    @val = val
    @neighbors = []
  end

  def self.bfs(starting_node, target_value)
    queue = Array.new
    visited = Array.new
    queue.push(starting_node)

    while !queue.empty?
      current_node = queue.shift
      if current_node.val == target_value
        return current_node
      end

      visited << current_node
      current_node.neighbors.each do |neighbor|
        if !visited.include?(neighbor)
          queue << neighbor
        end
      end
    end

    return nil
  end
end

a = GraphNode.new("a")
b = GraphNode.new("b")
c = GraphNode.new("c")
d = GraphNode.new("d")
e = GraphNode.new("e")
f = GraphNode.new("f")
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p GraphNode.bfs(a, "b")

p GraphNode.bfs(a, "f")
