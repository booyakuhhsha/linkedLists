

def get_path(node)
	path =[]
	count = 0
	while node.predecessor != nil
		path << node.predecessor
		count = count + 1
	end
	puts "It took #{count} moves and the path is: "
	path.each { |node| puts "#{node.position}"}
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