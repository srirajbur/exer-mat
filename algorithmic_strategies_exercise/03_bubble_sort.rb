# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

def bubble_sort(arr)

  for j in 0..arr.length - 1  
    
    for i in 0..arr.length - 2
      c = i + 1
      case arr[i] <=> arr[c]
      when 1
        arr[i], arr[c] = arr[c], arr[i]
      else 
        next
      end
    end

  end

  arr
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]