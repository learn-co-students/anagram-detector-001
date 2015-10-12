require 'pry'

class Anagram
  def initialize(str)
    @str = str
  end

  attr_accessor :str

  def match(arr)
    match_arr = []
    char_arr = @str.split("").sort
    arr.each do |item|
      if char_arr == item.split("").sort
        match_arr << item
      end
    end
    match_arr
  end
end