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

def my_any?(arr, &block)
  arr.each do |ele|
    if block.call(ele)
      return true
    end
  end

  return false
end

def my_all?(arr, &block)
  arr.each do |ele|
    if !block.call(ele)
      return false
    end
  end

  return true
end