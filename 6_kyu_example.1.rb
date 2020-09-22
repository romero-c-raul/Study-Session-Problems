=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

PROBLEM:
  - Input: String
  - Output: Integer
  
rules:
    - Explicit rules:
      - Write a method that takes a string of integers and returns the number off odd-numbered substrings that
        can be formed
      
DATA STRUCTURE
- Arrays
- Integers

ALGORITHM
- Go through string and obtain all substrings (helper method)
- Iterate through substrings, convert to integer, and check if they are  odd
  - If the strings are odd, add them to a new array

- Obtain size of the array and return
=end

def substrings(string)
  substrings = []
  
  0.upto(string.size - 1) do |starting_index|
    1.upto(string.size - starting_index) do |num_of_characters|
      substrings << string[starting_index, num_of_characters]
    end
  end
  
  substrings
end

def solve(string)
  substrings_array = substrings(string)
  odd_integers = []
  
  substrings_array.each do |integer|
    odd_integers << integer if integer.to_i.odd?
  end
  
  odd_integers.size
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28