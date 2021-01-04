require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class NumericTest < MiniTest::Test
  def test_numeric_subclass
    value1 = 5
    value2 = 2.0
    
    assert_kind_of Numeric, value1
    assert_kind_of Numeric, value2
  end
end