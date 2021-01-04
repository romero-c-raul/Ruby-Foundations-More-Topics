class TextAnalyzer
  def process
    file = File.open("sample_text.txt")
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new

analyzer.process do |file|
  paragraphs = file.split("\n\n").size
  puts "#{paragraphs} paragraphs"
end

analyzer.process do |file|
  lines = file.split("\n").size
  puts "#{lines} lines"
end

analyzer.process do |file|
  words = file.split.size
  puts "#{words} words"
end


