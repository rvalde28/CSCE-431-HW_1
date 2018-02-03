# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  counter =  0
  sum = 0

  while (counter < arr.length)
    sum = sum + arr[counter]
    counter += 1
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  counter = 2
  if(arr.length == 0)
    return 0
  elsif(arr.length == 1)
    return arr[0]
  end

  if (arr[0] > arr[1])
    largest = arr[0]
    second_largest = arr[1]
  elsif (arr[0] == arr[1])
    largest = arr[0]
    second_largest = arr[1]
  else
    second_largest = arr[0]
    largest = arr[1]
  end
 
  while(counter < arr.length)
    if(arr[counter] >= second_largest) 
      if(arr[counter] > largest)
        largest = arr[counter]
      elsif(arr[counter] == largest)
        second_largest = arr[counter]
      else
        second_largest = arr[counter]
      end
    end
    counter += 1
  end
  return (largest+second_largest)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if (arr.length == 0 || arr.length == 1)
    return false
  else
  end
 
  for i in 0..(arr.length-1)
    for j in  0..(arr.length-1)
      sum = arr[i] + arr[j]
      if (sum == n && i != j)
        return true
      end
    end
  end
  
return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
	return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if(s.empty?)
     return false
  else
    if (s[0] =~ /^[aeiouAEIOU]/)
			return false
		else
			if(s[0] =~ /^[a-zA-Z]/)
				return true
			else 
				return false
			end
		end
  end
	return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
	if(s.empty?)
		return false
  end

	if(s !~ /[^01]/)
		number = s.to_i(2)
		if(number % 4 == 0)
		  return true
		else 
		  return false
		end
	else 
		return false
	end
	return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
	attr_accessor :isbn, :price
	def initialize(isbn, price)
		if(isbn.empty?)
			begin	
				raise ArgumentError.new("isbn value is empty")
			end
		end
		
		if(price <= 0 )
			begin
				raise ArgumentError.new("Price is 0")
			end
		end

		@isbn = String.new(isbn)
		@price = price.to_f
	end

	def price_as_string 
		display_price = price
		display_price = display_price.round(2)
		display_price = '%.2f' % display_price.to_s
		string_value = "$" + display_price.to_s
	end

end
