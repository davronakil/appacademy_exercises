class RPNCalculator

 	attr_accessor :result

	def initialize 
		@result = []
	end

	def push(number)
		result << number
	end

	def plus
		result << lastnum + lastnum
	end

	def minus
		second = lastnum #3
		first = lastnum #2
		result << first - second
	end

	def divide
		second = lastnum #3
		first = lastnum #2
		result << first.to_f / second.to_f
	end

	def times
		second = lastnum #3
		first = lastnum #2
		result << first.to_f * second.to_f
	end

	def value
		result[-1]
	end


	def lastnum
		if result.empty?
			raise "calculator is empty"
		end
		result.pop
	end


	def tokens(instring)
		tokens = instring.split(" ")
		newtokens = []
		operators = ["+","-","*","/"]
		
		tokens.each do |x|
			if operators.include?(x)
				newtokens << x.to_sym
			else
				newtokens << x.to_i
			end
		end
		newtokens
	end


	def evaluate(instring)
		tokens(instring).each do |x|
			if x == :+
				plus
			elsif x == :-
				minus
			elsif x == :*
				times
			elsif x == :/
				divide
			else
				push(x)
			end
			
		end
		result[-1]

	end



end










