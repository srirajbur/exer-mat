# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"
def prime?(num)
  return false if num < 2

  (2...num).none? { |i| num % i == 0}
end

def largest_prime_factor(num)
  num.downto(2) do |factor|
    if num % factor == 0 && prime?(factor)
      return factor
    end 
  end
end

def unique_chars?(string)
  storage = ""
  string.each_char do |char|
    if storage.include?(char)
      return false
    end
    storage += char
  end 
  true
end

def dupe_indices(array)
  hash = Hash.new{|h,k| h[k] = [] } # hash["key"] << []

  array.each_with_index do |ele, idx|
    if array.count(ele) > 1
      hash[ele].push(idx)
    else
      next
    end
  end
  
  hash

end

def ana_array(arr1, arr2)
  return false if arr1.length != arr2.length

  ele_count(arr1) == ele_count(arr2)

end

def ele_count(arr)
  count = Hash.new(0)
  arr.each { |word| count[word] += 1 }
  count
end