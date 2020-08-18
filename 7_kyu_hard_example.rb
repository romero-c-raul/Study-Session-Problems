=begin

PROBLEM
  - Input: array
  - Output: integer

rules:
    - Explicit Rules:
      - Array can be empty or contain only one value
      - Count each pair only once
      - Max array length is 1000

EXAMPLES
[1, 2, 5, 6, 5, 2]  -->  2
...because there are two pairs, 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are two pairs: 2, 20, 6, and 2 again

DATA STRUCTURE
- Hash (?)
- Array

ALGORITHM
- Iterate through the given array
  - count the elements in each array and add results
    to a hash

- Look at the values in hash
  - if the value is divisible by two, divide the value
    by two to obtian the number of pairs
  - if the value is not divisible by two, (and greater
    than two) remove 1 from value and divide by 2 to
    obtain the number of pairs
=end

def pairs(arr)
  number_count = Hash.new(0)
  return 0 if arr.empty? || arr.size == 1
  
  arr.each do |number|
    number_count[number] += 1
  end
  
  pairs_array = number_count.map do |_, value|
    value if value < 2
    if value.even?
      value / 2
    else
      (value - 1) / 2
    end
  end
  
  pairs_array.delete_if do |element|
    element == nil 
  end
  
  pairs_array.reduce(:+)
end

p pairs([64, 60, 30])