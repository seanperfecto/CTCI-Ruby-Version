require_relative('../lib/linked_list');
require_relative('../lib/2.5_sum_lists');

describe '#sum_lists' do
  let(:list1) do
    list1 = ListNode.new(2)
    list1.next = ListNode.new(4)
    list1.next.next = ListNode.new(3)
    list1
  end
  let(:list2) do
    list2 = ListNode.new(5)
    list2.next = ListNode.new(6)
    list2.next.next = ListNode.new(4)
    list2
  end
  let(:list3) do
    list3 = ListNode.new(7)
    list3.next = ListNode.new(0)
    list3.next.next = ListNode.new(8)
    list3
  end

  it 'Should return return 708' do
    expect(get_vals(sum_lists(list1, list2))).to eq(get_vals(list3))
  end
end
