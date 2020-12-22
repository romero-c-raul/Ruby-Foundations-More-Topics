def drop_while(arr)
  true_element = nil
  collection = []
  
  arr.each_with_index do |current_element, index|
    true_element = yield(current_element)
    
    unless true_element
      collection = arr[index..-1]
      break
    end
  end
  
  collection
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []