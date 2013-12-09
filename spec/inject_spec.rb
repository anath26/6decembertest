require './lib/inject.rb'

describe Array do 

	let (:array) {Array.new}
	

	it 'should be in a class of Array type ' do
		expect(Array.instance_methods.include?(:anathinject)).to be_true
	end

	it 'should be able to add the values of an array' do
		# This isn't a good test because it doesn't do what it promises to do
		# It says that it will check if it can add elements of the array
		# but the array is empty (line 5) and you don't pass a block
		# of code to the method to sum the elements
		#
		# So even though the test passes, it's fairly useless
		expect(array.anathinject).to be_true
	end

	it 'should multiply each element by the result of multiplying the previous two elements' do
		# this is a much better test
		array = [2,4,9]
		expect(array.anathinject {|result, element| result * element}).to eq(72)
	end

	it 'should sum all the integers in the array' do
		# and this one it really good as well
		array = [2,4,9]
		expect(array.anathinject {|result, element| result + element }).to eq(15)
	end

	# however, you could have written many more tests. For example,
	# what if we pass the initial value to the method?
	# what if we pass an empty array?
	# etc.

end 