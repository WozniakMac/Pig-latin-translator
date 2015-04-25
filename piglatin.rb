def pig_latin(text)
	text.gsub( /\w+/ ) do |word| 
		wchars = word.chars
		first = wchars[0]
		last = wchars[-1]
		wchars << first
		wchars.delete_at(0)
		wchars[0].upcase! if first == first.upcase
		wchars[-1].downcase! if last == last.downcase
		if first =~ /[eyuioa]/
			"#{word}way"
		else
			"#{wchars.join}ay"
		end
	end
end
puts "Type some text"
typed = gets
puts pig_latin(typed)
gets