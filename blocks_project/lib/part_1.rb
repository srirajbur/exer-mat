
def select_even_nums(array)
  array.select(&:even?) 
end

def reject_puppies(array_of_hash)
  array_of_hash.reject { |dog| dog["age"] <= 2 }
end

def count_positive_subarrays(array)
  array.count { |arr| arr.sum > 0 }
end

def aba_translate(word)
  new_word = ""
  word.each_char do |char|
    if "aeiou".include?(char.downcase)
      new_word += char + "b" + char
    else
      new_word += char
    end
  end

  new_word

end