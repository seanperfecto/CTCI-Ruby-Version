# Check Permutation: Given two strings, write a method to decide if one is a permutation of the
# other.

def check_permutation(str1 = "", str2 = "")
  return true if str1 == str2
  return false if str1.length != str2.length

  str1_hash = Hash.new(0)
  str1.chars.each do |char|
    str1_hash[char] += 1
  end

  str2.chars.each do |char|
    str1_hash[char] -= 1
    return false if str1_hash[char] < 0
  end

  true
end

# O(n) space/ O(n) time (n being length of string, assuming same length)
# Could also sort strings then check, but that takes O(nlogn) time
# Case sensitive
