# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  ret = 0
  arr.each {|x| ret += x}
  ret
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    return sum(arr.max(2))
  end
end

def sum_to_n? arr, n
  if arr.empty?
    return false
  end
  1.upto(arr.size - 1) do |i|
    (i+1).upto(arr.size - 1) do |j|
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
  
end

def starts_with_consonant? s
  if s.empty? || (/^[a-z]/i =~ s) == nil
    return false
  end
  if (/^[aeiou]/i =~ s) == nil
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if (/^[01]+$/ =~ s) != nil && ((/00$/ =~ s) != nil || s == "0")
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  @isbn = ""
  @price = 0.0
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def isbn()
    @isbn
  end

  def price=(price)
    @price = price
  end
  def price()
    @price
  end

  def price_as_string()
    return "$%.2f" % @price
  end
end
