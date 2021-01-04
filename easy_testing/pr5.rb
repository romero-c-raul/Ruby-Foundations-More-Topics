require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class ValueTest < MiniTest::Test
  def test_element_included_in_array
    array = []
    assert_includes(array, 'xyz')
  end
end