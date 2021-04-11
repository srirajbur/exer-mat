def my_map(arr, &block)
  new = []
  arr.each { |ele| new << block.call(ele)}
  new
end
