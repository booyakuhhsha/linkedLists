

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