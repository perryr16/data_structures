class Node 

  attr_reader :surname, :next_node 

  def initialize(data)
    @surname = data
    @next_node = nil
  end

  def append_node(node)
    @next_node = node if @next_node.nil?
  end

end