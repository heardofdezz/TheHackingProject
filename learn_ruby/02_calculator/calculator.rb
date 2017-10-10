#write your code here

def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(x)
	z = 0
		x.each do |y|
			z += y
		end	
	return z
end

def multiply(x)

		(x).inject {|prod, n| prod * n }
end

def power(x, y)
	z = (x ** y)
	return z
end

def factorial(number)
	if number == 0
		return 0
	end
	total = 1
	else
  		(1..number).each do |i|
    	total *= i  
  	end
  total
end