# Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you
# cannot use additional data structures?

def is_unique?(str)
  hash = {}
  str.chars.each do |letter|
    if hash[letter]
      return false
    else
      hash[letter] = ""
    end
  end
  true
end

# O(n) space / O(n) time (n being length of string)
# No addiontal data structure: Use bit victors (cost time though)
