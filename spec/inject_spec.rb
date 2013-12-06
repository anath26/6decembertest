require './lib/inject.rb'

describe Array do 

	let (:array) {Array.new}
	

	it 'should be in a class of Array type ' do
		expect(Array.instance_methods.include?(:injectnew)).to be_true
	end

	it 'should be able to add the values of an array' do
		expect(array.injectnew).to be_true
		end


	it 'should multiply the values of the array by 5' do
		array = [2,4,9]
		expect(array.injectnew {|v| v * 5 }).to eq([10,20,45])
	end

	
	
end 