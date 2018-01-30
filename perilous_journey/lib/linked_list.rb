require './lib/node'
require 'pry'
class LinkedList
  attr_reader :head,
              :node_counter

  def initialize (head = nil)
    @head = head
    @node_counter = []
  end

  def append(data)
    node = Node.new(data)
    @node_counter << node
    @head = node
  end

  def next_node
  end

  def count
    @node_counter.count
  end

  def to_string
    "The #{@head.surname} Family"
  end

end
