class Node 

  attr_reader :score, :title, :left, :right
  
  def initialize(score, title)
    @score = score 
    @title = title
    @left = nil 
    @right = nil
  end

  def insert_left(node)
    @left = node
  end

  def insert_right(node)
    @right = node
  end

  def any_nil_node? 
    @left.nil? || @right.nil?
  end

  # def no_nil_node?
  #   @left.nil? & @right.nil?
  # end

  # def one_nil_node?
  #   @left.present? || @right.present?
  # end
  
end