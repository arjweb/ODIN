def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(array=[])  
	# need 0 to make sure empty array gives 0 not nil                 
    array.inject(0) {|sum,x| sum + x }
end

def multiply(array=[])
    array.inject(1) {|mult,x| mult * x }

end

def power(num1, num2)
	num1 ** num2
end

def factorial(num)
    (1..num).reduce(:*) || 1
end