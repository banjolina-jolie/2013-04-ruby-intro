class Node
  attr_accessor :value, :next
  def initialize(val)
    @value = val
    @next = nil
  end
end

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head, @tail = nil
  end

  def add_to_tail(val)
    node = Node.new(val)
    if @head == nil
      @head = node
    else
      @tail.next = node
    end
    @tail = node
  end

  def remove_head
    @head = @head.next
  end

  def contains(val, node=@head)
    if node.value == val
      return true
    elsif !node.next
      return false
    else
      node = node.next
      contains(val, node)
    end
  end
end

my_ll = LinkedList.new
my_ll.add_to_tail(1)
my_ll.add_to_tail(2)
my_ll.add_to_tail(3)
