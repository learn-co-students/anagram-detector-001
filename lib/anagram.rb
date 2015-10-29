# Your code goes here!
class Anagram

attr_accessor :word

def initialize(word)
  @word = word
end

def match(arr)
  arr.keep_if {|anagram| anagram.split("").sort == self.word.split("").sort}
end

end
