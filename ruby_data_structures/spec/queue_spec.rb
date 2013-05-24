require '../src/queue.rb'

describe Queue do
  before(:each) do
    @queue = Queue.new
  end

  it "init empty" do
    @queue.length.should == 0
  end

  describe "#add" do
    it "should add the first item correctly" do
      @queue.add('sup')
      @queue.length.should == 1
    end

    it "should add other items correctly" do
      @queue.add('1')
      @queue.add('2')
      @queue.length.should == 2
    end
  end

  describe "#remove" do
    it "should remove items" do
      @queue.add('1')
      @queue.length.should == 1
      @queue.remove
      @queue.length.should == 0
    end

    it "should remove the first item" do
      @queue.add('1')
      @queue.add('2')
      @queue.add('3')
      @queue.remove.should == '1'
      @queue.remove.should == '2'
      @queue.length.should == 1
    end
  end
end