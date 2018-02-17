# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  
 arr.inject(0){|sum,x| sum + x }
  
end

def max_2_sum(arr)
  if arr.count > 1 
    b = arr.sort[-2]
    a = arr.sort[-1]
    c = a + b
      return c 

 elsif arr.count == 1
    a = arr.sort[0]
    return a
 
  else 
      return 0
  end
  
end

def sum_to_n?(arr, n)
  
  return false if arr.empty?
  (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n } 
  
end

# Part 2

def hello(name)
  
  return "Hello, #{name}"
  
end

def starts_with_consonant? (s)
  
  if s == ""
      return false

    elsif s.instance_of?(Numeric)
      return true

     elsif s.match(/\A[a e i o u]/i)
       return false
  
   else 
      return true
  end
end


def binary_multiple_of_4?(s)
  
  if /\A[-+]?\d+\z/x.match(s)
    
    if s.to_i % 4 == 0 
      return true 
    else
      return false
    end
  
  else 
    return false
      
  end 
  
end


# Part 3


class BookInStock
 
  def initialize(isbn, price)
    raise ArgumentError if  isbn == nil || isbn.length == 0
    raise ArgumentError if price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn # sugar for generating getters/setters

  def price
    @price
  end
  def price=(price)
    @price = price
  end

  def price_as_string
    "$%0.2f" % @price
  end  

end