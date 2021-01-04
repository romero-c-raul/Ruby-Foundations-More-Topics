require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class Numeric; end

class NumericTest < MiniTest::Test
  def setup
    @instance = Array.new
  end
  
  def test_instance_of_numeric
    assert_instance_of(Numeric, @instance)
  end
  
end