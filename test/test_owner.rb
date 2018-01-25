require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/owner.rb'

class OwnerTest < Minitest::Test #This will be explained later

  def test_owner_name_is_set_properly #can write whatever we want as long as unique
    owner = Owner.new("Alex Cutschall")
    assert_instance_of Owner, owner
    #assert_equal "Alex Cutschall", owner.name
  end
end
