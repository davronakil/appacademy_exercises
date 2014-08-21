def echo(incoming)
	incoming.to_s
end

def shout(incoming)
	incoming.to_s.upcase
end

def repeat(word, number=2)
	Array.new(number, word).join(" ")
end


def start_of_word(word, num)
	word[0,num]
end


def first_word(sentence)
	words = sentence.split(" ")
	words[0]
end

def titleize(sentence)
arr = ['a', 'an', 'and', 'the', 'over']
result = sentence.capitalize.gsub(/\w+/) {|match| arr.include?(match) ? match : match.capitalize} 
end