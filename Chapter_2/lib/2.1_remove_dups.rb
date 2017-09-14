require_relative('./linked_list');

# Remove Dups: Write code to remove duplicates from an unsorted linked list.

def remove_dups(list)
  hash = {}
  prev= ListNode.new(nil)
  while !list.nil?
    if hash[list.val]
      prev.next = list.next
    else
      hash[list.val] = 0
      previous = list
    end
    list = list.next
  end

  list
end
