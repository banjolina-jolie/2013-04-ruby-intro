require '../src/tree.rb'

describe Tree do
  before(:each) do
      @tree = Tree.new(1)
  end

  it "has a contains method" do
    @tree.add_child(2)
    @tree.add_child(3)
    @tree.children[0].add_child(4)
    @tree.children[1].add_child(5)
    # @tree.contains(5).should == true
    @tree.contains?(5).should be_true
  end
end