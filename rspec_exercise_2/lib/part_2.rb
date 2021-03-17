def palindrome?(string)
  new = ""
  i = string.length - 1
  while i >= 0 
    new << string[i]
    i -= 1
  end

  string == new
end

def substrings(string)
  i = 0
  sub_strings = []
  while i < string.length
    new = ""
    (i...string.length).each do |idx|
      new += string[idx]
      sub_strings << new
    end
    i += 1
  end
  sub_strings
end