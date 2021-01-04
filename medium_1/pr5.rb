items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# gather(items) do |*element1, element2|
#   puts element1.join(", ")
#   puts element2
# end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

# gather(items) do |fruit, *vegetables, grain |
#   puts fruit
#   puts vegetables.join(", ")
#   puts grain
# end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

# gather(items) do |fruit, *rest |
#   puts fruit
#   puts rest.join(", ")
# end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

gather(items) do |a, b, c, d|
  puts [a, b, c, d].join(", ")
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!