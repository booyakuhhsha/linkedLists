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
		
		
		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			node = Node.new(self,move1)
				$visited << node.position
			@children << node; end
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			node = Node.new(self,move2)
				$visited << node.position
			@children << node;end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			node = Node.new(self,move3)
				$visited << node.position
			@children << node;end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			node = Node.new(self,move4)
				$visited << node.position
			@children << node;end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			node = Node.new(self,move5)
				$visited << node.position
			@children << node;end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			node = Node.new(self,move6)
				$visited << node.position
			@children << node;end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			node = Node.new(self,move7)
				$visited << node.position
			@children << node;end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			node = Node.new(self,move8)
				$visited << node.position
			@children << node			
		end
		#puts  "We have visited #{$visited.uniq.length} unique squares"
			@children.each { |child| child.make_children2}
		
	end



	def make_children2
		return "Finished" if $visited.uniq.length >= 64
	
		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			node = Node.new(self,move1)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			node = Node.new(self,move2)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			node = Node.new(self,move3)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			node = Node.new(self,move4)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			node = Node.new(self,move5)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			node = Node.new(self,move6)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			node = Node.new(self,move7)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			node = Node.new(self,move8)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		#puts  "We have visited #{$visited.uniq.length} unique squares"
		@children.each { |child| child.make_children3}
		
		
	end

	def make_children3
		
	
		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			node = Node.new(self,move1)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			node = Node.new(self,move2)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			node = Node.new(self,move3)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			node = Node.new(self,move4)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			node = Node.new(self,move5)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			node = Node.new(self,move6)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			node = Node.new(self,move7)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			node = Node.new(self,move8)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		#puts  "We have visited #{$visited.uniq.length} unique squares"
		@children.each { |child| child.make_children4}
		
	end

	def make_children4
		
	
		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			node = Node.new(self,move1)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			node = Node.new(self,move2)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			node = Node.new(self,move3)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			node = Node.new(self,move4)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			node = Node.new(self,move5)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			node = Node.new(self,move6)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			node = Node.new(self,move7)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			node = Node.new(self,move8)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
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
	queue = [tree]
	queue2 = []
	visited = []	
	while !visited.include? target	
		queue[0].each do |node|
			queue2 << node.children
			visited << node.position
			if node.position == target
				get_path(node)
				exit
			end	
		end
		queue = []
		queue2[0].each do |node|
					
			if node.position == target
				get_path(node)
				exit
			else
				queue << node.children	
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

start = [2,2]
target = [5,5]

#print possible_moves(start)
puts ""
tree = Tree.new(start)
tree =  tree.source.make_children
#print tree
puts "Once upon a time there was a Knight"
puts "He was on a chess board and he was on square #{start}"
puts "But he wanted to get to square #{target}"
puts "So his buddy Dom made him a program to help him find his path"



knight_moves(start,target,tree)

