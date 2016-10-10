class Node
	attr_reader :value
	attr_accessor :left, :right
	def initialize value
		@value = value
	end



	 #recursive method to place values left and right
	  
	  #array.each_index { |idx| binarytree << Node.new(array[idx],array[idx+1],array[idx-1])}
	  def insert(v)
		case value <=> v
		when 1 then left_insert(v)
		when -1 then right_insert(v)
		when 0 then false
		end
	  end 

	  #since left exists, need to check against left's value, this is when left's value gets passed up into insert(v) to compare with v
	  def left_insert(v)
	    if left #checking if left exists
	      left.insert(v) 
	    else
	    self.left = Node.new(v)
	    end
	  end 
	  def right_insert(v)
	    if right
	      right.insert(v)
	    else
	    self.right = Node.new(v)
	    end
	  end
	  #should i have an array of nodes, how do i line them up from my tree?
	  
	  
end

def breadth_first_search(search_value, tree)
  queue = [tree]
  visited = [tree]

  while queue != nil
    current = queue.shift
    puts "The current node is #{current} with a value of #{current.value}"
    visited << current
    left, right = current.left, current.right

    if current.value == search_value
      puts current
      exit
    end

    if !left.nil? && !visited.include?(left)#check if left has a node and check if it has been visited
      if left.value == search_value
        puts left
        exit
      else
        visited << left
        queue << left
      end
    end

    if !right.nil? && !visited.include?(right)
      if right.value == search_value
        puts right
        exit
      else
        visited << right
        queue << right
      end
    end
  end
  puts "nil"
end

def depth_first_search(search_value, tree)
  stack = [tree]
  visited = [tree]

  while !stack.empty?
    current = stack.last
    left, right = current.left, current.right
    puts "The current node is #{current} and the value is #{current.value}"

    if current.value == search_value
      
      puts current
      exit
    elsif !left.nil? && !visited.include?(left)
      if left.value == search_value
        puts left
        exit
      else
        visited << left
        stack << left
      end
    elsif !right.nil? && !visited.include?(right)
      if right.value == search_value
        puts right
        exit
      else
        visited << right
        stack << right
      end
    else
      stack.pop
    end
  end
  puts "nil"
end


array = [7, 4, 9, 23, 8, 3, 5, 67, 6345, 324]

#binarytree = build_tree
#binarytree.each {|item| puts "Parent: #{item.parent_node} Value: #{item.value} Child: #{item.child_node}"}
tree = Node.new(array[0])
array.each { |item| tree.insert(item)}
puts tree.inspect
puts ""
puts depth_first_search(67,tree)

