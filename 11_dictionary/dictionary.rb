class Dictionary 

	attr_accessor :entries

	def initialize
		@entries = {}
	end

	def add(fishhash)
		if fishhash.is_a?(Hash) == false
			@entries[fishhash] = nil
		else
			@entries[fishhash.keys[0]] = fishhash.values[0]
		end
	end

	def keywords
		@entries.inject([]){|arr,(key,val)| arr << key}.sort
	end

	def include?(word)
		if @entries.include?(word)
			true
		else
			false
		end
	end

#review vvvv
	def find(query)
    	found = {}
	    @entries.each do |key, value|
	    	if key =~ /^#{query}/
	        	found[key] = value
	      	end
    	end
    	found
  	end

  	def printable 
		print_arr = []
	    
	    @entries.sort.collect do |key, value|
			print_arr <<  "[#{key}] \"#{value}\""
	    end
	    print_arr.join("\n")
  	end

end