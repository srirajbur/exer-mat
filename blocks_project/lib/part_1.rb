
def select_even_nums(array)
  array.select(&:even?) 
end

def reject_puppies(array_of_hash)
  array_of_hash.reject { |dog| dog["age"] <= 2 }
end

def count_positive_subarrays(array)
  array.count { |arr| arr.sum > 0 }
end