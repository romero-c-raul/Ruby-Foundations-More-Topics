=begin
- Write a method that returns a list of all of the divisors of the positive 
  integer passed in as an argument. The return value can be in any sequence you wish.

input: integer
ouput: array

rules
  - Explicit rules
    - Write a method that returns a list of all of the divisors of the positive integer
      passed as an argument
      - Return value can be of any sequence
  - Implicit rules
    - We start with number one up to the number passed as an argument

problem domain
- Divisor is any number that divided by the dividend leaves no remainder

ALGORITHM
- Iterate from the starting number down to 1
- Select the elements that leave no remainder when dividend is given argument
- Return selected elements

=end

def divisors(integer)
  divisors = []
  
  integer.downto(1) do |current_element|
    divisors << current_element if integer % current_element == 0
  end
  
  divisors.sort
end

p divisors(1) == [1]
p divisors(7) #== [1, 7]
# p divisors(12) == [1, 2, 3, 4, 6, 12]
# p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute