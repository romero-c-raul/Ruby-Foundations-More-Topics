require 'mintest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class ListTest < Minitest::Test
  def test_
    list = List.new
    assert_same(list, list.process)
  end
end