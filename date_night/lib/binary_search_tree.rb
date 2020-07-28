class BinarySearchTree 

  def initialize 
    @head = nil
  end

  def insert(score, title)
    node = @head
    if @head.nil?
      @head = Node.new(score, title) if @head.nil?
      count = 0
    else 
      while node.any_nil_node?
        if node.left.nil?  
          node.insert_left(Node.new(score, title))
          count_to_head_left
        elsif node.right.nil?
          node.insert_right(Node.new(score, title))
          count_to_head_right
        else
          node = node.nil
        end
      end
    end

  end

  def count_to_head_left
    count = 0
    node = @head 
    until node.left.nil?
      count += 1
      node = node.left
    end
    count
  end

  def count_to_head_right
    count = 0
    node = @head 
    until node.right.nil?
      count += 1
      node = node.right
    end
    binding.pry
    count
  end

end