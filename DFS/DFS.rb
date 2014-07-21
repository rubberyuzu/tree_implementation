class DFS
	def initialize(list)
		@list = list
		@visited = []
	end
	def search(first)
		stack = [first]
		@visited << first
		p first
		while !stack.empty?
			current = stack.last
			children = @list[current]
			child = first_unvisited(children)
			if child
				stack << child
				@visited << child
				p child
			else
				stack.pop
			end
		end
	end

	def first_unvisited(arr)
		arr.each do |el|
			unless @visited.include?(el)
				return el
				break
			end
		end
		nil
	end

end

list = {
  "A" => ["B","S"],
  "B" => ["A"],
  "C" => ["D","E","F","S"],
  "D" => ["C"],
  "E" => ["C","H"],
  "F" => ["C","G"],
  "G" => ["F","H"],
  "H" => ["E","G"],
  "S" => ["A","C","G"]
 }
 dfs = DFS.new(list)
 dfs.search("A")