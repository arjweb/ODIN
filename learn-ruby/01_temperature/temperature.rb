def ftoc(temp)
	# formula for conversion
	(temp - 32) * 5/9
end

def ctof(temp)
	# Added .0 to divisor to force floating point numbers
	# no idea why Ruby behaves like this, but it does!
	temp * 9/5.0 + 32
end

