require 'pry'

class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(array)
    matches = []
    array.each do |poss|
      poss.chars.to_a.sort == @word.chars.to_a.sort ? matches.push(poss) : nil
    end
    matches
  end
end
