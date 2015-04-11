def echo(message)
	message
end

def shout(message)
	message.upcase
end

def repeat(message, num=2)
	string = message
	if num == 2 
		return message + " " + message
	else
		(1..num-1).each do
		string = string + " "+ message
	end
	end
	return string
end

def start_of_word(word, len)
	word[0..len-1]
end

def first_word(sentence)
	sentence.split(" ")[0]
end

def titleize(str)
    str.capitalize!  # capitalize first word anyway
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") 
  phrase  # returns the phrase with all the excluded words
end


