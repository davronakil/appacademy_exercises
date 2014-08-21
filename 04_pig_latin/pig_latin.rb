def translate(input)
	alphabet = ('a'..'z').to_a
	vowels = %w[a e i o u]
	const = alphabet - vowels
	words = []
	result = []
if input.include?(" ")
	words = input.split(" ")
	words.each do |word|
		 result << translate(word)	
	end
	result.join(" ")
elsif (const.include?(input[0])) && (input[1..2] == "qu")
	input[3..-1] + input[0] + "quay"
elsif input[0..1] == "qu"
	input[2..-1] + "quay"
elsif vowels.include?(input[0])
	input + "ay"
elsif (const.include?(input[0])) && (const.include?(input[1])) && (const.include?(input[2]))
	input[3..-1] + input[0] + input[1] + input[2] + "ay"
elsif (const.include?(input[0])) && (const.include?(input[1]))
	input[2..-1] + input[0] + input[1] + "ay"
elsif const.include?(input[0])
	input[1..-1] + input[0] + "ay"
end


end