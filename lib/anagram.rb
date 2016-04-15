require 'pry'

class Anagram

  attr_accessor :anagram_word

  def initialize(anagram_word)
    @anagram_word = anagram_word
  end

  def match(word_array)
    matching_words = []
    word_array.each do |word|
      # expects to return whatever matches
      if anagram_word.split(//).sort == word.split(//).sort
        matching_words << word
      end
    end
    matching_words
  end

end
