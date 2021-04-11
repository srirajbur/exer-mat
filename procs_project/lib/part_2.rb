def reverser(str, &block)
  reversed = block.call(str.reverse)
  
  reversed
end

def word_changer(sentence, &block)
  arr = sentence.split(' ')
  arr.map! do |word|
    block.call(word)
  end

  arr.join(' ')
end