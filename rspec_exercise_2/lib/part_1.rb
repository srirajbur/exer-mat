def partition(array, n)
  new_array = Array.new(2) { [] }

  array.each do |num|
    if num < n
      new_array[0] << num
    else
      new_array[1] << num
    end
  end
  new_array
end

def censor(sentence, curse_words)
  words = sentence.split(' ')

  new_words = words.map do |word|
    if curse_words.include?(word.downcase)
      star_vowels(word)
    else
      word
    end
  end
  new_words.join(' ')
end

def star_vowels(word)
  vowels = 'aeiou'
  new_str = ''

  word.each_char do |char|
    new_str += if vowels.include?(char.downcase)
                 '*'
               else
                 char
               end
  end

  new_str
end

def power_of_two?(n)
  product = 1
  product *= 2 while product < n

  product == n
end

def merge(hash1, hash2)
  new = {}

  hash1.each { |k, v| new[k] = v }
  hash2.each { |k, v| new[k] = v }

  new
end
