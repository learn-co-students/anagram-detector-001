require 'pry'
class Anagram

  def initialize(word)
    @word = word
  end

  def match(array)
    word_input = @word.split("").sort
    counter = 0
    matched_word = []

    while counter < array.count
      sorted_word = array[counter].split("").sort
      if sorted_word == word_input
        matched_word << array[counter]
        counter += 1
      else
        counter += 1
      end
    end

    matched_word
  end

end
