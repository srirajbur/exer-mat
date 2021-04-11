def my_map(arr, &block)
  mapped = []
  arr.each { |ele| mapped << block.call(ele)}
  mapped
end

def my_select(arr, &block)
  selected = []
  arr.each do |ele|
    if block.call(ele)
      selected << ele
    end
  end

  selected
end

def my_count(arr, &block)
  count = 0
  arr.each do |ele|
    if block.call(ele)
      count += 1
    end
  end

  count
end
