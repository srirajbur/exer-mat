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

def and_selector(arr, proc_1, proc_2)
  selected = []
  arr.each do |ele|
    if (proc_1.call(ele) && proc_2.call(ele))
      selected << ele
    end
  end

  selected 
end

def alternating_mapper(arr, even_block, odd_block)
  arr.map.with_index do |num, index|
    if index.even?
      even_block.call(num)
    else
      odd_block.call(num)
    end
  end
end
