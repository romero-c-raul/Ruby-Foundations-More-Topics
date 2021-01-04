#Write a minitest assertion that will fail if the value.odd? is not true.
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

class ValueTest < MiniTest::Test
  def test_odd_question
    value = 6
    assert value.odd?
  end
end