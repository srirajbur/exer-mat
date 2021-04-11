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

def greater_proc_value(num, proc_1, proc_2)
  greatest = []
  greatest << proc_1.call(num)
  greatest << proc_2.call(num)
  greatest.max
end
