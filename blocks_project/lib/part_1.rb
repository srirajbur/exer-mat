
def select_even_nums(array)
  array.select(&:even?) 
end

def reject_puppies(array_of_hash)
  array_of_hash.reject { |dog| dog["age"] <= 2 }
end