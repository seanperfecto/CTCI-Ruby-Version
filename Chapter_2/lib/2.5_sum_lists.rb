require_relative('./linked_list');

# Sum Lists: You have two numbers represented by a linked list, where each node contains a single
# digit. The digits are stored in reverse order, such that the 1 's digit is at the head of the list. Write a
# function that adds the two numbers and returns the sum as a linked list.

def sum_lists(l1, l2)
    dummy = ListNode.new(0)
    p, q, current = l1, l2, dummy
    carry = 0

    while !p.nil? || !q.nil?
        x = !p.nil? ? p.val : 0
        y = !q.nil? ? q.val : 0
        sum = carry + x + y
        carry = sum / 10
        current.next = ListNode.new(sum % 10)
        current = current.next
        p = p.next if p
        q = q.next if q
    end
    current.next = ListNode.new(carry) if carry > 0

    dummy.next
end
