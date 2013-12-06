class Array

	def injectnew
		result = [] 
		self.length.times do |i|
			result << yield(self[i])
		end
		result
	end
end

 puts [2,4,9].injectnew { |v| v * 5 }