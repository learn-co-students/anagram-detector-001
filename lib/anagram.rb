# Your code goes here!

class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(words_array)
        result = []
        words_array.each do |each_word|
            if each_word.length == @word.length
                if each_word.split('').sort == @word.split('').sort
                    result << each_word
                end
            end
        end
        result
    end

end