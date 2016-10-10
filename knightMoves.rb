class Knight
	attr_accessor :start, :end
	def initialize(start)
		@start = start
	end
	def possible_moves
		moves = []
		move1 = @start + [2,1]
	end

end

class Tree
	attr_accessor :source, :visited
	def initialize(starting_position)
		@source = Node.new(starting_position)
		$visited = []
	end

	

end

class Node
	attr_accessor :predecessor,:children,:position
	def initialize (predecessor=nil,position)
		@position = position
		@predecessor = predecessor
		@children = []
	end

	def make_children

		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			if !$visited.include?(move1)
				node = Node.new(@position,move1)
					$visited << node.position
				@children << node
				node.make_children;end; end
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			if !$visited.include?(move2)
				node = Node.new(@position,move2)
					$visited << node.position
				@children << node
				node.make_children;end;end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			if !$visited.include?(move3)
				node = Node.new(@position,move3)
					$visited << node.position
				@children << node
				node.make_children;end;end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			if !$visited.include?(move4)
				node = Node.new(@position,move4)
					$visited << node.position
				@children << node
				node.make_children;end;end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			if !$visited.include?(move5)
				node = Node.new(@position,move5)
					$visited << node.position
				@children << node
				node.make_children;end;end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			if !$visited.include?(move6)
				node = Node.new(@position,move6)
					$visited << node.position
				@children << node
				node.make_children;end;end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			if !$visited.include?(move7)
				node = Node.new(@position,move7)
					$visited << node.position
				@children << node
				node.make_children;end;end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			if !$visited.include?(move8)
				node = Node.new(@position,move8)
					$visited << node.position
				@children << node
				node.make_children
			end		
		end
		return @children
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


start = [1,2]


#print possible_moves(start)
puts ""
tree = Tree.new([1,2])
print tree.source.make_children
puts "\n\n"
puts "We have visited the following: #{$visited}"
puts "\n\n The amount of nodes visited is: #{$visited.length}"


