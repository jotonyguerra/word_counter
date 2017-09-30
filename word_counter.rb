# YOUR CODE HERE
require_relative "../argv_ex.rb"
def word_counter()
  # string.downcase.gsub(/[^a-z0-9\s]/i, '')
  #
  file_path = ARGV[0]
  WORDS_COUNT = {}
  file = File.open(file_path, "r")
  puts "Indexing #{file_path}"

  f.each_line do |line|
    words = line.split
    words.each do |word|
     word.downcase.gsub(/[^a-z0-9\s]/i, '')
     if WORDS_COUNT[word]
      WORDS_COUNT[word] += 1
     else
      WORDS_COUNT[word] = 1
     end
  end
end
puts "Indexed #{file_path}"
puts "Words count: "

WORDS_COUNT.sort {|a,b| a[1] <=> b[1]}.each do |key,value|
  puts "#{key} => #{value}"
end


end
