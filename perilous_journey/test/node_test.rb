require 'pry'
require './lib/node.rb'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test

  def test_node_exists
    node = Node.new("Burke")
    assert_equal Node, node.class
  end

  def test_node_has_a_surname
    node = Node.new("Burke")
    assert_equal "Burke", node.surname
  end

  def test_node_has_a_next_node
    node = Node.new("Burke")
    assert_nil node.next_node
  end

end
