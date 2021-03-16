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
















def caesar_cipher(message, n)
  alphabet = ("a".."z").to_a
  new_message = ""

  message.each_char do |char|
    if alphabet.include?(char)
      old_index = alphabet.index(char)
      new_index = old_index + n 
      new_message += alphabet[new_index % 26] 
    else
      new_message += char
    end
  end

  new_message
end