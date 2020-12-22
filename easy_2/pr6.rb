def each_with_index(arr)
  index = 0
  arr.each do |current_element|
    yield(current_element, index)
    index += 1
  end
  
  arr
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]