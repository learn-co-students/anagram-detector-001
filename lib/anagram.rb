require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(arr)
    anagrams = []
    arr.each do |item|
      if @word.size == item.size
        flag = true
        @word.each_char do |char|
          if @word.count(char) != item.count(char) then flag = false end
        end
        if flag then anagrams << item end
      end
    end
    anagrams
  end

end
