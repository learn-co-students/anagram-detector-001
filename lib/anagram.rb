require 'pry'

class Anagram
  def initialize(str)
    @str = str
  end

  attr_accessor :str

  def match(arr)
    arr.select do |item|
      item.split("").sort.join == @str.split("").sort.join
    end
  end
end