class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end

def reverse_list(list, previous=nil)
  value = list.next_node ? reverse_list(list.next_node, list) : list.value
  list.next_node = previous
  return value
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

puts reverse_list
