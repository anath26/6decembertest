class Array

  # be careful with the indentation
  def anathinject
    # overall, the logic is correct, well done!
  	result = self.first
    self.each_with_index do |val , index| 
      # this approach (line 10) works – and well done for figuring it out
      # but there's an easier solution    
      return result if index+1 == self.count       
      result = yield result,self[index+1]       
  	end
    # what you're doing on line 10 is cutting the cycle short by one iteration.
    # You need to do this because there should be no iteration for the
    # first element that you put into result on line 6
    # A cleaner solution would be to iterate over a subset of the array, 
    # skipping the first element, e.g.
    #   self.slice(1..-1).each do |element|
    # Then you won't need the index at all, doing
    #   result = yield result, element
    # instead
  end
end

# because this line was here, it was printing the value in the test
# don't do it, test whatever you need in the test itself
puts [2,4,9].anathinject { |v| v * 5 }