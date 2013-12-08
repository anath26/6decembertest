require './lib/takeaway.rb'

describe Takeaway do 

	context 'menu' do
		let(:takeaway) {Takeaway.new}

		it ' should be able to list the dishes with there prices' do
			expect(takeaway.menu).to be_true
		end

		it 'should list 3 takeaway dishes' do
			expect(takeaway.menu.length).to eq(3)
		end

		it 'should allow ordering 2 pizza and 1 drink' do
			order = [{:pizza => 2}, {:drink => 1}]
			expect{takeaway.place_order(order, 19)}.to raise_error
		end


			


		
	end
end

