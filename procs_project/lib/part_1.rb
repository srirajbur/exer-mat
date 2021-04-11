def my_map(arr, &block)
  mapped = []
  arr.each { |ele| mapped << block.call(ele)}
  mapped
end

def my_select(arr, &block)
  selected = []
  arr.each do |ele|
    if block.call(ele)
      selected << ele if block.call(ele)
    end
  end
  selected
end
