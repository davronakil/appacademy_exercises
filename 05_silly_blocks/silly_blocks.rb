def reverser
	input = yield
	words = input.split(" ")
	result = []
	i = 1
	words.each do |word|
		result << word.reverse 
	end
	result.join(" ")
end


def adder (num = 1)
	yield + num
end


def repeater(num = 1)
	num.times do yield end
end

