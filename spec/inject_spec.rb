require './lib/inject.rb'

describe Array do 

	let (:array) {Array.new}
	let (:map) {Map.new}

	it 'should be in a class of Array type ' do
		expect(Array.instance_methods.include?(:map)).to be_true
	end

	it 'should be able to add the values of an array' do
		expect(array.map).to be_true
		end


	it 'should multiply the values of the array by 5' do
		array = [2,4,9]
		expect(array.map {|v| v * 5 }).to eq([10,20,45])
	end

	
	
end 