require './lib/inject.rb'

describe Array do 

	let (:array) {Array.new}
	

	it 'should be in a class of Array type ' do
		expect(Array.instance_methods.include?(:anathinject)).to be_true
	end

	it 'should be able to add the values of an array' do
		expect(array.anathinject).to be_true
		end


	it 'should multiply each element by the result of multiplying the previous two elements' do
		array = [2,4,9]
		expect(array.anathinject {|result, element| result * element}).to eq(72)
	end

	it 'should sum all the integers in the array' do
		array = [2,4,9]
		expect(array.anathinject {|result, element| result + element }).to eq(15)
	end

	
	
end 