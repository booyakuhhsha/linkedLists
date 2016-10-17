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
			node = Node.new(@position,move1)
				$visited << node.position
			@children << node; end
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			node = Node.new(@position,move2)
				$visited << node.position
			@children << node;end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			node = Node.new(@position,move3)
				$visited << node.position
			@children << node;end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			node = Node.new(@position,move4)
				$visited << node.position
			@children << node;end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			node = Node.new(@position,move5)
				$visited << node.position
			@children << node;end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			node = Node.new(@position,move6)
				$visited << node.position
			@children << node;end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			node = Node.new(@position,move7)
				$visited << node.position
			@children << node;end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			node = Node.new(@position,move8)
				$visited << node.position
			@children << node			
		end
		puts  "We have visited #{$visited.uniq.length} unique squares"
			@children.each { |child| child.make_children2}
		
	end



	def make_children2
		return "Finished" if $visited.uniq.length >= 64
	
		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			node = Node.new(@position,move1)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			node = Node.new(@position,move2)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			node = Node.new(@position,move3)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			node = Node.new(@position,move4)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			node = Node.new(@position,move5)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			node = Node.new(@position,move6)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			node = Node.new(@position,move7)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			node = Node.new(@position,move8)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		puts  "We have visited #{$visited.uniq.length} unique squares"
		@children.each { |child| child.make_children3}
		
		
	end

	def make_children3
		
	
		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			node = Node.new(@position,move1)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			node = Node.new(@position,move2)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			node = Node.new(@position,move3)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			node = Node.new(@position,move4)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			node = Node.new(@position,move5)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			node = Node.new(@position,move6)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			node = Node.new(@position,move7)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			node = Node.new(@position,move8)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		puts  "We have visited #{$visited.uniq.length} unique squares"
		@children.each { |child| child.make_children4}
		
	end

	def make_children4
		
	
		if ((@position[0]+2) < 8 && (@position[1]+1) < 8)
			move1 = [@position[0] + 2,@position[1] + 1]
			node = Node.new(@position,move1)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]-1) >= 0
			move2 = [@position[0] - 2,@position[1] - 1]
			node = Node.new(@position,move2)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-2) >= 0 && (@position[1]+1) < 8
			move3 = [@position[0] - 2,@position[1] + 1]
			node = Node.new(@position,move3)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+2) < 8 && (@position[1]-1) >= 0
			move4 = [@position[0] + 2,@position[1] - 1]
			node = Node.new(@position,move4)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]+2) < 8
			move5 = [@position[0] + 1,@position[1] + 2]
			node = Node.new(@position,move5)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >=0 && (@position[1]+2) < 8
			move6 = [@position[0] - 1,@position[1] + 2]
			node = Node.new(@position,move6)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]+1) < 8 && (@position[1]-2) >= 0
			move7 = [@position[0] + 1,@position[1] - 2]
			node = Node.new(@position,move7)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		if (@position[0]-1) >= 0 && (@position[1]-2) >= 0
			move8 = [@position[0] - 1,@position[1] - 2]
			node = Node.new(@position,move8)
			#if !$visited.include? node.position
				@children << node; 
			#end
			$visited << node.position
		end
		puts  "We have visited #{$visited.uniq.length} unique squares"
		
		
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
		queue.each do |node|
			queue2 << node.children
			if node.position == target
				get_path(node)
				exit
			end	
		end

		queue2[0].each do |node|
			
						if node.position == target
							get_path(node)
							exit
						#else
							#queue2 << current.children	
						end	
					
				end
			
		
		#get path via while loop, while @node has a predecessor, that will be the path, and then keep storing and going up

end

def get_path(node)
	path =[]
	count = 0
	path << node.position
	current = node.predecessor
	puts current
	while current != nil
		path << current
		if current != nil
			current = current.predecessor
		end
		count = count + 1
	end
	puts "It took #{count} moves and the path is: "
	path.each { |node| puts "#{node.position}"}
end

start = [0,0]
target = [3,3]

#print possible_moves(start)
puts ""
tree = Tree.new(start)
tree =  tree.source.make_children
print tree



puts "\n\nWe have visited #{$visited.uniq.length} unique squares and they are: #{$visited.uniq}\n\n"
queue =[]
puts "The parent is: "
print tree[0].position
puts "\nAnd the children are: "
queue = tree[0].children

puts ""
queue.each {|node| print node.position}
queue2 = queue[0].children
puts "\n\nThe parent is now #{queue[0].position}"
puts "The children are: "
queue2.each {|node| print node.position}

puts ""
queue3 = queue[2].children
puts "\n\nThe parent is now #{queue[2].position}"
puts "The children are: "
queue3.each {|node| print node.position}

puts "\n\nThe parent is: "
print tree[1].position
puts "\nAnd the children are: "
queue = tree[1].children

puts ""
queue.each {|node| print node.position}
queue2 = queue[0].children
puts "\n\nThe parent is now #{queue[0].position}"
puts "The children are: "
queue2.each {|node| print node.position}

knight_moves(start,target,tree)

