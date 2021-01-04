def some_method(array)
  yield(*array)
end

birds = %w(raven finch hawk eagle)

some_method(birds) do |raven, finch, *raptors|
  p raven
  p finch
  p raptors
end

some_method(birds) do |_, _, *raptors|
  p raptors.join(", ")
end