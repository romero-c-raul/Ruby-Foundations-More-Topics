require 'minitest/autorun'
# require 'minitest/reporters'
# Minitest::Reporters.use!

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @file = File.open('sample.txt')
  end
  
  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
  
  def test_swap
   text = @file.read
   new_text = Text.new(text)
   test_text = text.gsub('a', 'e')
   
   assert_equal(test_text, new_text.swap('a', 'e'))
  end
  
  def test_word_count
    text = @file.read
    
    expected_count = text.split.count
    actual_count = Text.new(text).word_count
    
    assert_equal expected_count, actual_count
  end
end