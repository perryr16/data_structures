require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/binary_search_tree'
require './lib/node'


class BinarySearchTreeTest < Minitest::Test 

  def test_it_inserts_and_returns 
    tree = BinarySearchTree.new

    actual = tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 0, actual

    actual = tree.insert(16, "Johnny English")
    assert_equal 1, actual

    actual = tree.insert(92, "Sharknado 3")
    assert_equal 1, actual

    actual = tree.insert(50, "Hannibal Buress: Animal Furnace")
    assert_equal 2, actual
  end
end