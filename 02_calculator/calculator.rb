def add(num1, num2)
	num1 + num2
end



def subtract(num1, num2)
	num1 - num2
end


def sum(array)
	result = 0
	array.each do |item|
		result = result + item
	end
	result
end


def multiply(*numbers)
	result = 1
	numbers.each { |n| result = result * n }
	result
end


def power(base,exponent)
	i = 0
	result = 1

	while i < exponent
		result = result * base
		i += 1
	end
	result
end


def factorial(n)
  total = 1
  (1..n).each do |n|
    total *= n   
  end
  total
end

