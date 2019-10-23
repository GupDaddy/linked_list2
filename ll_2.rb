class LinkedListNode
	attr_accessor :firstNodeValue, :secondNodeValue

	def initialize(firstNodeValue, secondNodeValue=nil)
    	@firstNodeValue = firstNodeValue
    	@secondNodeValue = secondNodeValue
  	end
end

def reverse_list(list, prev=nil)
	if list
		secondNodeValue = list.secondNodeValue
		list.secondNodeValue = prev
		reverse_list(secondNodeValue, list)
	end
end

def print_values(list_node)
	if list_node
    	print "#{list_node.firstNodeValue} --> "
    	print_values(list_node.secondNodeValue)
  	else
    	print "nil\n"
    	return
  	end
end
    

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)

puts "------------"

revlist = reverse_list(node3)

print_values(node1)