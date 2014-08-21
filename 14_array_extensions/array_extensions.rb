class Array 



	def sum
		output = 0
		self.each do |x|
			output = output + x
		end
		output
	end


	def square
		if self.empty?
			return []
		end
		output = []
		self.each do |x|
			output << (x*x)
		end
		output
	end

	def square!
		if self.empty?
			return []
		end
		self.map! do |x|
			x*x
		end
	end



end