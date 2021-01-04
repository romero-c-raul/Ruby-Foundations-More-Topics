require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class ArrayTest < MiniTest::Test
  def test_
    list = ['xyz', 'zbc', 123]
    refute_includes(list, 'xyz')
  end
end