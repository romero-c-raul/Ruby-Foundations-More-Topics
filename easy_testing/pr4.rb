require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class ValueTest < MiniTest::Test
  def test_empty_array
    array = [1, 2, 3]
    assert_empty array
  end
end