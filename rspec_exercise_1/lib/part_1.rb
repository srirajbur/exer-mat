
def average(num1, num2)
  (num1 + num2) / 2.0
end

def repeat(str, n)
  new = ""  
  n.times { new << str }

  new
end

def average_array(arr)
  arr.sum / (arr.length * 1.0)
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(sentence)
  arr = sentence.split(" ")
  new = []
  arr.each_with_index do |ele, idx|
    if idx == 0 || idx%2==0
      new << ele.upcase
    else
      new << ele.downcase
    end
  end
  new.join(" ")
end