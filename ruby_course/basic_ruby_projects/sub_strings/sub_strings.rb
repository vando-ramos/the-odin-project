# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash = {}
  dictionary.each do |word|
    hash[word] = string.downcase.scan(word).count if string.downcase.include?(word)
  end
  p hash
end

substrings('below', dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)