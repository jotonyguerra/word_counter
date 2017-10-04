require 'pry'

def word_counter
  filename = ARGV[0]
  n = ARGV[1]
  hash = Hash.new(0)
  file = File.open(filename, 'r')
  words = file.read.split(" ")
  words.each do |word|
    word.gsub(/\W/, "")
    hash[word.downcase] += 1
  end
  n = n.to_i
  sorted_hash = hash.sort_by{|key, value| value}.reverse[0..n].to_h
  sorted_hash.each do |key, value|
    puts "#{key}: #{value}"
  end

end
puts word_counter
