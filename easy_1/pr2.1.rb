def compute(element)
  if block_given?
    yield(element)
  else
    "Does not compute."
  end
end


p compute(3) { |element| 5 + element } == 8
p compute('a') { |element| element + 'b' } == 'ab'
p compute(['a', 'b']) { |element| element + ['c', 'd'] } == ['a', 'b', 'c', 'd']
