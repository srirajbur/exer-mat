def hipsterfy(str)
  vowels = "aeiou"
  i = str.length - 1

  while i >= 0
    if vowels.include?(str[i])
      return str[0...i] + str[i+1..-1]
    end
    i -= 1
  end

  str
end

def vowel_counts(string)
  hash = Hash.new(0)
  vowels = "aeiou"

  string.each_char do |char|
    if vowels.include?(char.downcase)
      hash[char.downcase] += 1
    end
  end
  hash
end