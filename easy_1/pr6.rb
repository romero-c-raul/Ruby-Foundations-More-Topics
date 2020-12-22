=begin

input: array
output: boolean

rules
  - Explicit rules
    - Write a method any?:
      - If the block returns a value of true for any element, #any? returns true
      - Else, #any? returns false
      - #any? will stop searching the collection the first time the block
        returns true
      - Empty array returns false, regardless of how block is defined

ALGORITHM
- Iterate through collection
- Yield each element of collection to the block
- Return true if block returns true
- Else keep going until the end
- Return false at the end

=end

def any?(arr)
  arr.each do |current_element|
    return true if yield(current_element)
  end
  
  false
end


p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false