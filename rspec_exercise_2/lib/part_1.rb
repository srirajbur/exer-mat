def partition(array, n) 
  new_array = Array.new(2) {Array.new}

  array.each do |num|
    if num < n
      new_array[0] << num
    else
      new_array[1] << num
    end
  end
  new_array
end