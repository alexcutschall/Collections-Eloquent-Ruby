require './lib/linked_list'
require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_linked_list_exists
    list = LinkedList.new
    assert_equal LinkedList, list.class
  end

  def test_linked_list_head_is_nil_by_default
    list = LinkedList.new
    assert_nil list.head
  end

  def test_linked_list_can_append
    list = LinkedList.new
    assert_instance_of Node, list.append("West")
  end

  def test_link_has_a_next_node
    #made sure I added these requirements
    node = Node.new("West")
    list = LinkedList.new
    list.append(node)

    assert_nil list.head.next_node
  end

  def test_link_has_a_count_method
    node = Node.new("West")
    list = LinkedList.new
    list.append(node)

    assert_equal 1, list.count
  end

  def test_has_a_node_array
    list = LinkedList.new
    assert_equal [], list.node_counter
  end

  def test_has_a_to_string_method
    node = Node.new("West")
    list = LinkedList.new
    list.append(node)

    assert_equal "The West Family", list.to_string
  end

  def test_can_take_different_inputs
    #I checked the equal to the class and it worked!

    list = LinkedList.new
    list.append("Brooks")

    assert_equal Node, list.append("Brooks").class
    assert_equal "The Brooks Family", list.to_string
  end
end
