class Tree
	attr_accessor :source, :visited
	def initialize(starting_position)
		@source = Node.new(starting_position)
		$visited = [starting_position]
	end

end

class Node
	attr_accessor :predecessor,:children,:position
	def initialize (predecessor=nil,position)
		@predecessor = predecessor
		@position = position
		@children = []
	end

	def possible_moves

		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			node = Node.new(self,move1)
				$visited << node.position
			if node.position != self.predecessor
				@children << node
			end
		end
				
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			node = Node.new(self,move2)
				$visited << node.position
			if node.position != self.predecessor
				@children << node
			end
		end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			node = Node.new(self,move3)
				$visited << node.position
			if node.position != self.predecessor
				@children << node
			end
		end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			node = Node.new(self,move4)
				$visited << node.position
			if node.position != self.predecessor
				@children << node
			end
		end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			node = Node.new(self,move5)
				$visited << node.position
			if node.position != self.predecessor
				@children << node
			end
		end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			node = Node.new(self,move6)
				$visited << node.position
			if node.position != self.predecessor
				@children << node
			end
		end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			node = Node.new(self,move7)
				$visited << node.position
			if node.position != self.predecessor
				@children << node
			end
		end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			node = Node.new(self,move8)
				$visited << node.position
			if node.position != self.predecessor
				@children << node
			end
		end
		return @children
	end

	def make_children
		possible_moves
		@children.each { |child| child.make_children2}
	end

	def make_children2
		possible_moves
		@children.each { |child| child.make_children3}
	end

	def make_children3
		possible_moves	
		@children.each { |child| child.make_children4}
	end

	def make_children4
		possible_moves
		@children.each { |child| child.make_children5}
	end

	def make_children5
		possible_moves
		@children.each { |child| child.make_children6}
	end

	def make_children6
		possible_moves
	end

end


def knight_moves(start,target,tree)
	queue = tree
	queue2 = []
	visited = []	
	while !visited.include? target	
		queue.each do |node|
			children = node.children
			children.each { |node| queue2 << node }
			visited << node.position
			if node.position == target
				get_path(node)
				exit
			end	
		end
		queue = []
		queue2.each do |node|	
			if node.position == target
				get_path(node)
				exit
			else
				children = node.children
				children.each { |node| queue << node}	
			end		
		end
		queue2 = []
	end	
end

def get_path(node)
	path =[]
	count = 0
	path << node
	current = node.predecessor
	
	while current != nil
		path << current
		if current != nil
			current = current.predecessor
		end
		count = count + 1
	end
	puts "\nIt took #{count} moves and the path is: "
	path.reverse.each { |node| puts "#{node.position}"}
end

start = [0,0]
target = [5,4]

tree = Tree.new(start)
tree =  tree.source.make_children

puts "Once upon a time there was a Knight"
puts "He was on a chess board and he was on square #{start}"
puts "But he wanted to get to square #{target}"
puts "So his buddy Dom made him a program to help him find his path"

knight_moves(start,target,tree)
