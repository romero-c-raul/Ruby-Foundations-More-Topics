require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class ValueTest < MiniTest::Test
  def test_nil
    value = 'Hello World!'
    assert_nil value
  end
end