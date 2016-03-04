# Your code goes here!
class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(match_array)
    word_ordered = self.order_word(@word)
    match_array.select { |m|
      m_ordered = self.order_word(m)
      word_ordered.eql? m_ordered
    }
  end

  def order_word(word)
    word.split("").sort.join
  end

end
