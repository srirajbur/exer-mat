def palindrome?(string)
  new = ""
  i = string.length - 1
  while i >= 0 
    new << string[i]
    i -= 1
  end

  string == new
end