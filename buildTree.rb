class Node
	attr_accessor :value, :left, :right, :parent
	def initialize value
		@value = value
	end




end

def build_tree(array)
		nodes = []
		array.each do |item|
			nodes << Node.new(item)
		end

		nodes.each_with_index do |index|
			case nodes[index].value <=> 
end


array = %w(4 3 6 2 3)
tree = build_tree(array)
tree.each_ {|node| puts "Value is: #{}node.value}"

#we have an array of nodes
#first node is root -> can be pushed to tree
#next node gets compared with root -> root.left if smaller, root.right if larger
#third node gets compared with root -> left or right -> keeps going left or right until it finds a vacant spot


