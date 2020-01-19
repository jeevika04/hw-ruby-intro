# When done, submit this entire file to the autograder.
#CSCE 431 Spring 2020
# Jeevika Jarmarwala 
# Part 1

# Used https://ruby-doc.org/core-2.4.1/Array.html to complete Part 1 
def sum arr
  sum_array = 0 
  arr.each { |x| sum_array = sum_array + x } 
  return sum_array
end

def max_2_sum arr
  sorted_array = arr.sort
  reverse_array = sorted_array.reverse
  sum(reverse_array.take(2))
end

def sum_to_n? arr, n
  array_pairs = arr.combination(2).to_a
  array_pairs.each do |x|
    return true if sum(x) == n
  end
  return false 
end 

# Part 2

def hello(name)
  name = "Hello, " + name
  return name
end

def starts_with_consonant? s
  /^[^aeiouAEIOU\W]/x.match(s) != nil
end

# https://stackoverflow.com/questions/32536143/check-if-string-has-only-0-and-1

def binary_multiple_of_4? s
  return true if s == "0"
  if (/[^01]/ !~ s)
    return (/^[01]*00$/.match(s) != nil)
  end
end

# Part 3

# https://www.rubyguides.com/2012/01/ruby-string-formatting/

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError, 'Arguments are not valid' if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf("$%2.2f",@price)
  end
    
  
end
