#Program to create a linked list in Ruby
class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
  end
end

class LinkedList
  attr_accessor :head, :tail
  #Initialize head and tail to same initail node
  def initialize(head)
    raise "Linked list must be initialized with a Node." unless head.is_a?(Node)
    @head = head
    @tail = head
  end
  def insert(node)
    @tail.next = node
    @tail = tail.next
  end
  #Print the values of Linked List in order
  def print
    current_node = @head
    while current_node != nil
      puts "\nNode value = #{current_node.value}"
      current_node = current_node.next
    end
  end
  #Iterating throught the linked list and yield value to the block
  def iterate
    if block_given?
      current_node = @head
      while current_node != nil
        yield current_node.value
        current_node = current_node.next
      end
    else
      print
    end
  end
end

puts "\nCreate a linked list of 5 node elements with values 1-5. \n"
h = Node.new(1)
list = LinkedList.new(h)
(2..5).each{|n| list.insert(Node.new(n))}
puts "Current values contained in the linked list: "
list.print

