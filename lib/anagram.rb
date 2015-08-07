class Anagram
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def match(array)
    new_array = Array.new

    array.each do |mix_word|
      if mix_word.split('').sort == @word.split('').sort
        new_array << mix_word
      end
    end

    new_array
  end
end