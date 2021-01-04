def convert_to_base_8(n)
  n.to_s(8).to_i # replace these two method calls
end

# The correct type of argument must be used below
base8_proc = method(:convert_to_base_8).to_proc
new_proc = Proc.new { |num| convert_to_base_8(num) }

# We'll need a Proc object to make this code work. Replace `a_proc`
# with the correct object
p [8, 10, 12, 14, 16, 33].map { |num| convert_to_base_8(num) }
p [8, 10, 12, 14, 16, 33].map(&base8_proc)                      # we are converting to a block
p [8, 10, 12, 14, 16, 33].map(&new_proc)  
#[10, 12, 14, 16, 20, 41]

=begin
1.  Define a method
2.  Convert method functionality to method object
3.  That method object can be converted to a proc that can be passed as an 
    argument to a method

1. "&" used in a method parameter
  - Converts explicit block to a simple proc object
  - We now have a variable that represents a block
  
2. "&" used in method argument
  - Converts object to proc and then into block
  


=end

