require '../src/linked_list.rb'

describe LinkedList do
  before(:each) do
    @linked_list = LinkedList.new
  end

  it "initializes with nil head and tail" do
    @linked_list.head.should == nil
    @linked_list.tail.should == nil
  end

  describe "add to tail" do
    it "should add node to tail and to head also if head is nil" do
      @linked_list.add_to_tail("first item")
      @linked_list.add_to_tail("second item")
      @linked_list.head.value.should == "first item"
      @linked_list.tail.value.should == "second item"
    end
    it "should set the next value of previous tail to be new tail" do
      @linked_list.add_to_tail("first item")
      @linked_list.add_to_tail("second item")
      prev_tail = @linked_list.tail
      @linked_list.add_to_tail("third item")
      prev_tail.next.value.should == "third item"
      @linked_list.tail.next.should == nil
    end
  end

  describe "remove head" do
    it "should replace current head node with that node's next value" do
      @linked_list.add_to_tail("first item")
      @linked_list.add_to_tail("second item")
      @linked_list.add_to_tail("third item")
      @linked_list.remove_head
      @linked_list.head.value.should == "second item"
    end
  end
end