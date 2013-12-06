require './lib/inject.rb'

describe Array do 

	let (:array) {Array.new}
	# let (:map) {Map.new}

	it 'should be in a class of Array type ' do
		expect(Array.instance_methods.include?(:map)).to be_true
	end

	# it 'should '


	
	
end 