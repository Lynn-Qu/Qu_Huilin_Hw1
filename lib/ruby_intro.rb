
# -------Part 1------

# sum (array) ：this method will receive an array and get the sum of all elements in this array
def sum(array)
  len = array.length
  res = 0
  if len > 0
    for num in array
      res+=num
    end
    return res
  else
    return 0;
  end
end


# max_2_sum (array): sum the two largest elements in this array
def max_2_sum (array)
  max1 = 0
  max2 = 0
  len = array.length
  res = 0;
  
  if len > 1
    array.sort!
    max1 = array.pop
    max2 = array.pop
    res = max1 + max2
    return res
    
  elsif len == 1
    return array[0]
  else
    return 0
  end
  return res
end

# to check if there exists two elements having sum equals to n
def sum_to_n?(array, n)
  res = false
  if array.length > 1
    for i in 1..array.length - 1
      for j in 0..i-1
        if array[i] + array[j] == n
          res = true
          break
        end
      end
    end
  end
  return res
end

# -----------Part 2-------------

# hello(name) should output the hello + argument of name
def hello(name)
  # YOUR CODE HERE
  
  return "Hello, #{name}"
end

# this method to check if the string start with a consonant
def starts_with_consonant?(s)
  #\W：catch any non-word character,
  # i： added at the end to make regular expression case insensitive. do not care upper or lower case
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  end
  return true
end

#method: returns true if the string represents a binary number that is a multiple of 4
def binary_multiple_of_4?(s)
  if(s.to_s =~ /\b[01]+\b/) && (s.to_i % 4 ==0)
    return true
  end
  return false
end

# --------------Part 3 ---------------------

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if (isbn.empty?) || (price <= 0)
      raise ArgumentError
    end
    
    @isbn = isbn
    @price = price
    
  end

  def price_as_string
    "$%.2f" % @price
  end
end
