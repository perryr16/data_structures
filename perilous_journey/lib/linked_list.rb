class LinkedList 

  attr_reader :head
  def initialize 
    @head = nil 
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data) 
    elsif @head.next_node.nil?
      @head.append_node(Node.new(data)) 
    end
  end

  def count 
    count = 0 if @head.nil?
    count = 1
    node = @head
    until node.next_node.nil?
      node = node.next_node
      count += 1
    end 
    count
  end

  def to_string
    node = @head
    head = "The #{@head.surname} Family"
    following = ""
    until node.next_node.nil?
      node = node.next_node
      following = ", followed by the #{node.surname} Family"
    end
    head + following
  end
  
end