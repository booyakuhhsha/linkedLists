class LinkedList
  attr_accessor :name
  def initialize
  	@head = nil
  	@tail = nil
  end


  def append

  end

end

class Node
  attr_accessor :next, :data
  def initialize(data=nil)
  	@next = nil
  	@data = data
  end
end
