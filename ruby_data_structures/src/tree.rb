class Tree
  attr_accessor :value, :children
  def initialize(val)
    @value = val
    @children = []
  end

  def add_child(val)
    @children.push(Tree.new(val))
  end

  def contains?(val)
    if @value == val
      return true
    else
      @children.each do |child|
        return true if child.contains?(val)
      end
      return false
    end
  end
end
