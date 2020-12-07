class GraphNode
    attr_accessor :value, :neighbor
    def initialize(value)
        @value = value
        @neighbors = []
    end


    def bfs(starting_node, target_value)
        queue = [starting_node]
        visited = Set.new()

        until queue.empty?
            node = queue.shift
            unless visited.include?(node)
                return node.val if node.val == target_value
                visited.add(node)
            queue += node.neighbors
        end
    end
end