require './lib/takeaway.rb'

describe Takeaway do 

	context 'menu' do
		let(:takeaway) {Takeaway.new}

		it 'should be able to list the dishes with there prices' do
			# this test doesn't test what it promises on the previous line
			# instead, it could expect something along the lines of 
			#    expect(Takeaway::MENU.keys).to include(:pizza)
			#    expect(Takeaway::MENU.keys).to include(:ice_cream)
			# You don't have to have a special menu() method
			expect(takeaway.menu).to be_true
		end

		it 'should list 3 takeaway dishes' do
			# Yep, this makes sense
			expect(takeaway.menu.length).to eq(3)
		end

		it 'should allow ordering 2 pizza and 1 drink' do
			# this test makes sense as well
			order = [{:pizza => 2}, {:drink => 1}]
			expect{takeaway.place_order(order, 19)}.to raise_error
		end
		
	end
end

