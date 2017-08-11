require_relative('../lib/3.2_stack_min')

describe 'Find the highest number' do
	let(:test_array) {[23,34,45,5,3,5,5,5,324,7,8,9,89,22]}

	it 'it should return 3' do
		expect(min_num_stack(test_array)).to eq(3)
	end
end
