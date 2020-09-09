# When done, suarrbmit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  return arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length()==0
	return 0
	
 elsif arr.length()==1
	return arr.inject(0, :+)

else return arr.max(2).inject(0,:+)
end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false  if arr.empty? 
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /[aeiouAEIOU*]/.match(s[0])
      return false
    elsif /0-9*/.match(s[0])
      return false
    elsif /[^a-zA-Z0-9.*]/.match(s)
      return false
    elsif /^$/.match(s)
      return false
    else
      return true
    end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE

  return true if s=='0'
  return false if s.length()<=1
	
	
  return true if s.chars.all? {|x| x =~ /[01]/} && s[-2,2]=='00'

end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize(isbn, price)
	@isbn= isbn
	@price=price

	if isbn.length==0 or price<=0
	raise ArgumentError
	end
	end

attr_accessor :isbn
attr_accessor :price

def price_as_string 
return "$%.2f" % price

end 
end
