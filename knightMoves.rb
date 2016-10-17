
$visited = []
class Node
	attr_accessor :predecessor,:children,:position,:all_moves
	def initialize (predecessor=nil,position)
		@position = position
		@predecessor = predecessor
		@all_moves = []
		@children = []
	end

	def make_children(target)
		puts "\nThe current node is: #{self.position}"
		#while $visited != target
			if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
				move1 = [@position[0] + 2,@position[1] + 1]
				
					node = Node.new(@position,move1)
					#all_moves << node
				if !$visited.include?(move1)		
						$visited << node.position
						@children << node
					;end; end
			if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
				move2 = [@position[0] - 2,@position[1] - 1]
				node = Node.new(@position,move2)
				#all_moves << node
				if !$visited.include?(move2)
					
						$visited << node.position
						@children << node
					;end;end
			if (@position[0]-2) >= 0 && (@position[1]+1) < 8
				move3 = [@position[0] - 2,@position[1] + 1]
				node = Node.new(@position,move3)
				#all_moves << node
				if !$visited.include?(move3)
					
						$visited << node.position
						@children << node
					;end;end
			if (@position[0]+2) < 8 && (@position[1]-1) >= 0
				move4 = [@position[0] + 2,@position[1] - 1]
				node = Node.new(@position,move4)
				#all_moves << node
				if !$visited.include?(move4)
					
						$visited << node.position
						@children << node
					;end;end
			if (@position[0]+1) < 8 && (@position[1]+2) < 8
				move5 = [@position[0] + 1,@position[1] + 2]
				node = Node.new(@position,move5)
				#all_moves << node
				if !$visited.include?(move5)
					
						$visited << node.position
						@children << node
					;end;end
			if (@position[0]-1) >=0 && (@position[1]+2) < 8
				move6 = [@position[0] - 1,@position[1] + 2]
				node = Node.new(@position,move6)
				#all_moves << node
				if !$visited.include?(move6)
					
						$visited << node.position
						@children << node
					;end;end
			if (@position[0]+1) < 8 && (@position[1]-2) >= 0
				move7 = [@position[0] + 1,@position[1] - 2]
				node = Node.new(@position,move7)
				#all_moves << node
				if !$visited.include?(move7)
					
						$visited << node.position
						@children << node
					;end;end
			if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
				move8 = [@position[0] - 1,@position[1] - 2]
				node = Node.new(@position,move8)
				#all_moves << node
				if !$visited.include?(move8)
					
						$visited << node.position
						@children << node
					
				end	

			end
			
			
			@children.each { |node| node.make_children(target)}
		
	end
end

def knight_move(start,finish)
	if start == finish
		puts "Zero moves to get to finish"
	end
	source = Node.new(start)
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

def breadth_first_search(search_value, tree)
  queue = [tree]
  visited = [tree]

  current = queue.shift
  print current
  
end

start = [0,0]
target = [3,3]

#print possible_moves(start)

source = Node.new(start)
tree = source.make_children(target)


puts "\n\n"
puts "We have visited the following: #{$visited}"
puts "\n\n The amount of nodes visited is: #{$visited.length}"
puts "BFS"
#breadth_first_search([3,3],tree)
#print tree.inspect
queue = [tree] #this is a fucking bullshit, youre putting array within array
print tree.shift.position
print tree.shift.position
#There are only 2 items in the tree array
print tree.shift.position




