# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |num|
    sum += num
  end
  return sum
end

def max_2_sum arr
  sum = 0
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    max_first = arr.sort.reverse!
    sum = max_first[0] + max_first[1]
  end
end

def sum_to_n? arr, n
  if arr.length < 2 || !arr.combination(2).detect { |a, b| a + b == n }
    false
  else
    true
  end
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  true unless s.length < 1 || s[0].match(/^([aeiouAEIOU]|\W|\s)/)
end

def binary_multiple_of_4? s
  if s.empty? || s[0].match(/^([aeiouAEIOU]|\W|\s)/)
    false
  elsif s.to_i(base=2) % 4 == 0
    true
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    if !isbn.empty? && price > 0
      @isbn = isbn
      @price = price
    else
      raise ArgumentError
    end
  end

  def price_as_string
    "$#{format("%.2f", @price)}"
  end
end
