# def gather(items)
#   puts "Let's start gathering food."
#   puts "#{items.join(', ')}"
#   puts "Nice selection of food we have gathered!"
# end

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "That's a nice selection of food we have gathered!"
end

items = ['apples', 'corn', 'cabbage', 'wheat']

gather(items) { |items| items.join(", ") }
