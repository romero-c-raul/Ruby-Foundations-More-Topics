# def count(arr)
#   true_elements = 0
  
#   arr.each do |current_element|
#     true_elements += 1 if yield(current_element)
#   end
  
#   true_elements
# end

# Further exploration
def count(arr)
  arr.select { |element| yield(element) }.size
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2