require_relative('../lib/linked_list');
require_relative('../lib/2.1_remove_dups');

describe '#remove_dups' do
  let(:list1) do
    list1 = ListNode.new(2)
    list1.next = ListNode.new(4)
    list1.next.next = ListNode.new(3)
    list1.next.next.next = ListNode.new(2)
    list1.next.next.next.next = ListNode.new(4)
    list1
  end

  let(:list2) do
    list2 = ListNode.new(2)
    list2.next = ListNode.new(4)
    list2.next.next = ListNode.new(3)
    list2
  end

  it 'Should return a list without duplicates' do
    expect(get_vals(remove_dups(list1))).to eq(get_vals(list2))
  end
end
