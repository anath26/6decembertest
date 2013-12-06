class Array

	def map
		result = [] 
		self.length.times do |i|
			result << yield(self[i])
		end
		result
	end
end

 puts [2,4,9].map { |v| v * 5 }