def anagrams_bad(string1,string2)
  string_array = string1.chars.permutation.to_a
  return true if string_array.include?(string2.chars)
  false
end

# p anagrams_bad("gizmo", "sally")
# p anagrams_bad("elvis", "lives")


def anagrams_better(string1, string2)
  string2 = string2.chars
  return false if string1.length != string2.length
  string1.chars.each do |ch|
    idx = string2.index(ch)
    unless idx.nil?
      string2.delete_at(idx)
    end
  end
  return true if string2.empty?
  false
end

# p anagrams_better("gizmaasdfsdfo", "saasdfasdflly")
# p anagrams_better("elvasdfisasdf", "liasasdfdfves")

def anagrams_maybe_better(string1, string2)
  return true if string1.chars.sort == string2.chars.sort
  false
end

# p anagrams_maybe_better("gizmaasdfsdfo", "saasdfasdflly")
# p anagrams_maybe_better("elvasdfisasdf", "liasasdfdfves")


def not_better_by_much_anagram(string1, string2)
  hsh1 = Hash.new(0)
  hsh2 = Hash.new(0)

  string1.chars.each do |ch|
    hsh1[ch] +=1
  end

  string2.chars.each do |ch|
    hsh2[ch] +=1
  end

  return true if hsh1 == hsh2
  false
end
#
# p not_better_by_much_anagram("gizmaasdfsdfo", "saasdfasdflly")
# p not_better_by_much_anagram("elvasdfisasdf", "liasasdfdfves")


def slightly_better_by_much_anagram(string1, string2)
  hsh1 = Hash.new(0)

  string1.chars.each do |ch|
    hsh1[ch] += 1
  end

  string2.chars.each do |ch|
    hsh1[ch] -= 1
  end

  return true if hsh1.values.all? {|el| el == 0}
  false
end



p slightly_better_by_much_anagram("gizmaasdfsdfo", "saasdfasdflly")
p slightly_better_by_much_anagram("elvasdfisasdf", "liasasdfdfves")
