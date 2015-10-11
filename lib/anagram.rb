# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end

  def match(words)
    words.select {|x| x.split("").sort.join == @word.split("").sort.join}
  end
end
