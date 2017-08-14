# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def get_vals(list)
  array = []
  current = list
  until current.nil?
    array << current.val
    current = current.next
  end
  array
end
