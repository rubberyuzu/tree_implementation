class BFS
	def initialize(list)
		@list = list
	end

	def search(first, target)
		queue = [first]
		visited = { first => true }
		p first
		while !queue.empty?
			node = queue.shift
			@list[node].each do |child|
				unless visited[child]
					p child
					if child == target
						p "search done" 
						exit
					end
					queue << child
					visited[child] = true
				end
			end
		end
	end
end



list = {
  "A" => ["C","D","E"],
  "B" => ["C","F"],
  "C" => ["A","B","D","F","E"],
  "D" => ["A","C","E"],
  "E" => ["A","C","D"],
  "F" => ["B","C"]
 }
 bfs = BFS.new(list)
 bfs.search("A", "F")