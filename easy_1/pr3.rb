# First attempt
=begin

- Write a method that takes a sorted array of integers as an argument, and 
  returns an array that includes all of the missing integers (in order) between 
  the first and last elements of the argument.

input: array
output: array

rules
  explicit rules:
      - Write a method that takes a sorted array as an argument, and returns an array that
        includes all missing integers
      - Return an empty array if no integers were skipped
      - Return an empty array if the array only has one element
  
  implicint rules: 
      - First element is the starting integer, and last element is the ending integer

DATA STRUCTURE
- Array

ALGORITHM
- Take an array as an input 
- Create an array that contains all numbers from the first element of the given
  array to the last element of the given array
- Remove duplicates between the two arrays

=end

def missing(array)
  complete_array = []
  
  array.first.upto(array.last) do |current_number|
    complete_array << current_number unless array.include?(current_number)
  end
  
  complete_array
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

# LS solution
=begin

def missing(array)
  result = []
  array.each_cons(2) do |first, second|
    result.concat(((first + 1)..(second - 1)).to_a)
  end
  result
  
end
=end