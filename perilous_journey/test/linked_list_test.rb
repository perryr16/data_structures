require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'
require './lib/linked_list'

class LinkedListTest < Minitest::Test 

  def test_it_exists 
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_it_returns_attribtues
    list = LinkedList.new 
    assert_nil list.head 

    list.append("West")
    assert_equal "West", list.head.surname

    assert_nil list.head.next_node 
  end
  
  def test_count
    list = LinkedList.new 
    list.append("West")
    assert_equal 1, list.count 
  end
  
  def test_string_function 
    list = LinkedList.new 
    list.append("West")
    assert_equal "The West Family", list.to_string
  end

  def test_multi_nodes 
    list = LinkedList.new
    assert_nil list.head

    list.append("Rhodes")
    assert_equal "Rhodes", list.head.surname
    assert_nil list.head.next_node

    list.append("Hardy")
    assert_equal "Hardy", list.head.next_node.surname
  end
  

end

# list.count
# => 2
# list.to_string
# => "The Rhodes family, followed by the Hardy family"