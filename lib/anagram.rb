# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(sentence)
    matches = []
    sentence.each do |w|
      if w.split('').sort == @word.split('').sort
        matches.push(w)
      end
    end
    matches
  end

end