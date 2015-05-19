#!/usr/bin/env ruby -wKU
class PigLatin
	def self.translate(text)
		text.gsub( /\w+/ ) do |word| 
			if (first = (wchars = word.chars).first).downcase =~ /[eyuioa]/
				"#{word}way"
			else
				last = wchars[-1]
				wchars << first
				wchars.delete_at(0)
				wchars[0].upcase! if first == first.upcase
				wchars[-1].downcase! if last == last.downcase
				"#{wchars.join}ay"
			end
		end
	end
end