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

# it "should return an hash where keys are the elements that were repeated in the array and values are the indices where that element appears" do
#   expect(dupe_indices(["a", "b", "c", "c", "b"])).to eq({"b"=>[1,4], "c"=>[2,3]})
#   expect(dupe_indices(["a", "a", "c", "c", "b", "c"])).to eq({"a"=>[0,1], "c"=>[2,3,5]})
#   expect(dupe_indices(["a", "b", "c"])).to eq({})
# end