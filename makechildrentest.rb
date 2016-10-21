
$visited = []
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

	def make_children
		exit if $visited.uniq.length >= 64
		#puts "The parent is: #{self.position}"
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
		#puts "The children are: #{self.children}"
		#puts  "We have visited #{$visited.uniq.length} unique squares"
		
		make_children2(@children)
		
	end

	def make_children2(children)
		return exit if $visited.uniq.length >= 64
		puts "of unique squares visited #{$visited.uniq.length}"
		children.each do |node|
			position = node.position	
			if ((position[0]+2) < 8 && (position[1]+1) < 8)
				move1 = [position[0] + 2,position[1] + 1]
				node = Node.new(self,move1)
					$visited << node.position
				if node.position != self.predecessor
					@children << node
				end
			end
					
			if (position[0]-2) >= 0 && (position[1]-1) >= 0
				move2 = [position[0] - 2,position[1] - 1]
				node = Node.new(self,move2)
					$visited << node.position
				if node.position != self.predecessor
					@children << node
				end
			end
			if (position[0]-2) >= 0 && (position[1]+1) < 8
				move3 = [position[0] - 2,position[1] + 1]
				node = Node.new(self,move3)
					$visited << node.position
				if node.position != self.predecessor
					@children << node
				end
			end
			if (position[0]+2) < 8 && (position[1]-1) >= 0
				move4 = [position[0] + 2,position[1] - 1]
				node = Node.new(self,move4)
					$visited << node.position
				if node.position != self.predecessor
					@children << node
				end
			end
			if (position[0]+1) < 8 && (position[1]+2) < 8
				move5 = [position[0] + 1,position[1] + 2]
				node = Node.new(self,move5)
					$visited << node.position
				if node.position != self.predecessor
					@children << node
				end
			end
			if (position[0]-1) >=0 && (position[1]+2) < 8
				move6 = [position[0] - 1,position[1] + 2]
				node = Node.new(self,move6)
					$visited << node.position
				if node.position != self.predecessor
					@children << node
				end
			end
			if (position[0]+1) < 8 && (position[1]-2) >= 0
				move7 = [position[0] + 1,position[1] - 2]
				node = Node.new(self,move7)
					$visited << node.position
				if node.position != self.predecessor
					@children << node
				end
			end
			if (position[0]-1) >= 0 && (position[1]-2) >= 0
				move8 = [position[0] - 1,position[1] - 2]
				node = Node.new(self,move8)
					$visited << node.position
				if node.position != self.predecessor
					@children << node
				end
			end
			
		end
		#puts "The children are: #{self.children}"
		#puts  "We have visited #{$visited.uniq.length} unique squares"
		#make_children2(@children)
		
		
	end
end
start = [3,3]
target = [4,3]

tree = Tree.new(start)
tree =  tree.source.make_children