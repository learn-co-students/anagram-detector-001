require 'pry'

class Anagram
  
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(arr)
    arr.each_with_object([]) do | w, matches |
      if (w.split('') & @word.split('')).count == @word.split('').uniq.count and w.length == @word.length
        matches << w
      end
    end
  end

end