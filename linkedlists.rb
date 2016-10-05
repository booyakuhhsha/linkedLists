class LinkedList
  attr_accessor :name
  def initialize
  	@head = Node.new("head",nil)
  	@tail = nil
  end


  def append(value) #adds a new node to end of list
  	if @head.nil?
  	  @head = value
  	  @tail = value
  	else
  	  node = Node.new(value,@head) #new entry will point to current head
  	  @head = node #we assign the new entry to the head
  	end
  end

  def prepend(value) #adds node to beginning of list
  	if @head.nil?
  	  @head = value
  	  @tail = value
  	else
  	  @tail.next_node = value #tell the current tail to point to this new value, which will be the new tail
  	  @tail = value #assign the new value as the new tail
  	end
  end


  def size #returns amount of nodes in list
  	if @head.next_node #checks if a next node exists
  	  node = @head.next_node #assigns new variable "node" to the following node
  	  i = 1
  	  while node.next_node #loop while there is another node
  	  	node = node.next_node
  	  	i += 1
  	  end
  	  return i
  	else
  		return 0
  	end
  end

  def head #returns the first item in the list, which should always be assigned to @head
  	@head
  end

  def tail #returns the last item in the list, which should always be assigned to @tail
  	@tail
  end

  def at(index) #start at the head and count up to the index given by the user?
  	if self.size > index #check that the index is not greater than our current list size
  	  if @head.next_node #check we have more than just a head
  	  	node = @head.next_node #set node equal to the next node
  	  	i = 0 #initiate counter
  	  	until i == index #loop and then return that node
  	  	  node = node.next_node
  	  	  i += 1
  	  	end
  	  	return node
  	  else
  	  	return nil
  	  end
  	end
  	return nil
  end

  def pop #removes the tail, loop through nodes until there is no node two spots ahead
  	return nil if @tail.nil?
  	node = @head.next_node
  	while node.next_node.next_node
  	  node = node.next_node
  	end
  	popped = node.next_node #pop the last node , this should also be equivalent to popped = @tail
  	@tail = node #assign current node as the new tail
  	return popped
  end

  def contains? #loop through all nodes and check if node.value == value
  	if @head.next_node
  	  node = @head.next_node
  	  while node.next_node
  	  	if node.value == value
  	  	  return true
  	  	else
  	  		node = node.next_node
  	  	end
  	  end
  	  return false
  	else
  	  return false
  	end
  end

  def find(data) #loop through all nodes, check if any value = data and then have a counter
  	if @head.next_node 
  	  node = @head.next_node
  	  i = 0
  	  while node.next_node
  	  	if node.value == value
  	  	  return i
  	  	else
  	  		node = node.next_node
  	  		i += 1
  	  	end
  	  end
  	  return nil
  	else
  	  return nil
  	end  	  	
  end

  def to_s #loop through all nodes and convert values to strings and push them into an array
  	if @head.next_node
  	  s = "(#{@head.next_node.value}) -> "
  	  node = @head.next_node
  	  while node.next_node
  	  	s += "(#{@head.next_node.value}) -> "
  	  	node = node.next_node
  	  end
  	  s += nil
  	  return s
  	else 
  	  return nil
  	end
  end

  def insert_at(index) #loop through nodes until 

  end
end

class Node
  attr_accessor :value, :next_node 
  def initialize (value=nil,next_node=nil)
  	@value = value
  	@next_node = next_node
  end

end

list = LinkedList.new
puts list.head.value
puts list.append(5)
puts list.append(4)
puts list.prepend(3)
puts list.size
puts list.tail
puts list.tail.value

