class Knight
	attr_accessor :start, :end
	def initialize(start)
		@start = start
		@position = position
	end
	def move(position)

	end

end

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
		
			@children.each { |child| child.make_children2}
		
	end



	def make_children2
		
		#puts "\nThe parent is: #{self.position}"

		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			
			if move1 != self.predecessor.position
				node = Node.new(self,move1)
				$visited << node.position
				@children << node
			end
		end
				
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			if move2 != self.predecessor.position
				node = Node.new(self,move2)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			if move3 != self.predecessor.position
				node = Node.new(self,move3)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			if move4 != self.predecessor.position
				node = Node.new(self,move4)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			if move5 != self.predecessor.position
				node = Node.new(self,move5)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			if move6 != self.predecessor.position
				node = Node.new(self,move6)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			if move7 != self.predecessor.position
				node = Node.new(self,move7)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			if move8 != self.predecessor.position
				node = Node.new(self,move8)
				$visited << node.position
				@children << node
			end
		end
		#puts "The children are: #{self.children}"
		#puts  "We have visited #{$visited.uniq.length} unique squares"
		
			@children.each { |child| child.make_children3}
		
		
		
	end

	def make_children3
		
	
		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			
			if move1 != self.predecessor.position
				node = Node.new(self,move1)
				$visited << node.position
				@children << node
			end
		end
				
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			if move2 != self.predecessor.position
				node = Node.new(self,move2)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			if move3 != self.predecessor.position
				node = Node.new(self,move3)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			if move4 != self.predecessor.position
				node = Node.new(self,move4)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			if move5 != self.predecessor.position
				node = Node.new(self,move5)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			if move6 != self.predecessor.position
				node = Node.new(self,move6)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			if move7 != self.predecessor.position
				node = Node.new(self,move7)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			if move8 != self.predecessor.position
				node = Node.new(self,move8)
				$visited << node.position
				@children << node
			end
		end
		#puts  "We have visited #{$visited.uniq.length} unique squares"
			
			@children.each { |child| child.make_children4}
		
		
		
	end

	def make_children4
		
	
		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			
			if move1 != self.predecessor.position
				node = Node.new(self,move1)
				$visited << node.position
				@children << node
			end
		end
				
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			if move2 != self.predecessor.position
				node = Node.new(self,move2)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			if move3 != self.predecessor.position
				node = Node.new(self,move3)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			if move4 != self.predecessor.position
				node = Node.new(self,move4)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			if move5 != self.predecessor.position
				node = Node.new(self,move5)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			if move6 != self.predecessor.position
				node = Node.new(self,move6)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			if move7 != self.predecessor.position
				node = Node.new(self,move7)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			if move8 != self.predecessor.position
				node = Node.new(self,move8)
				$visited << node.position
				@children << node
			end
		end
		#puts  "We have visited #{$visited.uniq.length} unique squares"
		@children.each { |child| child.make_children5}
		
	end

	def make_children5
		
	
		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			
			if move1 != self.predecessor.position
				node = Node.new(self,move1)
				$visited << node.position
				@children << node
			end
		end
				
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			if move2 != self.predecessor.position
				node = Node.new(self,move2)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			if move3 != self.predecessor.position
				node = Node.new(self,move3)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			if move4 != self.predecessor.position
				node = Node.new(self,move4)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			if move5 != self.predecessor.position
				node = Node.new(self,move5)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			if move6 != self.predecessor.position
				node = Node.new(self,move6)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			if move7 != self.predecessor.position
				node = Node.new(self,move7)
				$visited << node.position
				@children << node
			end
		end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			if move8 != self.predecessor.position
				node = Node.new(self,move8)
				$visited << node.position
				@children << node
			end
		end
		#puts  "We have visited #{$visited.uniq.length} unique squares"
		
		
	end



end

def possible_moves(start)
	potential_moves = []
	if ((start[0]+2) < 8 && (start[1]+1) < 8)
		move1 = [start[0] + 2,start[1] + 1]
		potential_moves << move1; end
	if (start[0]-2) >= 0 && (start[1]-1) >= 0
		move2 = [start[0] - 2,start[1] - 1]
		potential_moves << move2;end
	if (start[0]-2) >= 0 && (start[1]+1) < 8
		move3 = [start[0] - 2,start[1] + 1]
		potential_moves << move3;end
	if (start[0]+2) < 8 && (start[1]-1) >= 0
		move4 = [start[0] + 2,start[1] - 1]
		potential_moves << move4;end
	if (start[0]+1) < 8 && (start[1]+2) < 8
		move5 = [start[0] + 1,start[1] + 2]
		potential_moves << move5;end
	if (start[0]-1) >=0 && (start[1]+2) < 8
		move6 = [start[0] - 1,start[1] + 2]
		potential_moves << move6;end
	if (start[0]+1) < 8 && (start[1]-2) >= 0
		move7 = [start[0] + 1,start[1] - 2]
		potential_moves << move7;end
	if (start[0]-1) >= 0 && (start[1]-2) >= 0
		move8 = [start[0] - 1,start[1] - 2]
		potential_moves << move8			
	end
	return potential_moves
end

def knight_moves(start,target,tree)
	queue = tree
	queue2 = []
	visited = []	
	while !visited.include? target	
		queue.each do |node|
			puts "queue #{node} with position #{node.position} and it has #{node.children.length} children"
			children = node.children
			puts "We are putting in the following children into queue2:"
			children.each {|node| print node.position}
			children.each { |node| queue2 << node }
			visited << node.position
			if node.position == target
				get_path(node)
				exit
			end	
		end
		queue = []
		queue2.each do |node|
			puts "queue2 #{node}"		
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
		#get path via while loop, while @node has a predecessor, that will be the path, and then keep storing and going up

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
	puts "\n\nIt took #{count} moves and the path is: "
	path.reverse.each { |node| puts "#{node.position}"}
end

start = [0,1]
target = [7,7]

#print possible_moves(start)
puts ""
tree = Tree.new(start)
tree =  tree.source.make_children
#print tree
puts "Once upon a time there was a Knight"
puts "He was on a chess board and he was on square #{start}"
puts "But he wanted to get to square #{target}"
puts "So his buddy Dom made him a program to help him find his path"
puts "We have visited #{$visited.uniq.length} squares"
print "Visited: #{$visited.uniq.sort}\n\n"



knight_moves(start,target,tree)
