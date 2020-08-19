=begin
Complete the greatestProduct method so that it'll 
find the greatest product of five consecutive digits in the given string of digits.

For example:
greatestProduct("123834539327238239583") // should return 3240

The input string always has more than five digits.

PROBLEM
- Input: String
- Output: Integer

rules:
    - Explicit Rules
      - Create a method that finds the greatest product of five consecutive numbers in the given string of digits
      - Input string always has > 5 digits

DATA STRUCTURE:
  - Array

ALGORITHM
- Extract from string 5 numbers at a time
  - First extraction: Obtain numbers with index 0 to 4
  - Second extraction: Obtain numbers with index 1 to 5
  - Third extraction: Obtain numbers with index 2 to 6
  - Store all these "extractions" in an array until the extraction is less that 5 digits/characters long
  
  
- Iterate through that array, and multiply the elements of 
  each individiual subarray together
  
- Pick out the sub array that has the highest value

PSEUDOCODE
- Accepting a string (string)
- Initialize an empty array (collection_integers)
- Initialize a variable with a value of 0 (string_start)
- Initialize a variable value of 4 (string_end)

- Start a loop
  - Extract five characters from that loop: string[start..end]
    assign that string to a variable (current_substring)
    - Convert current substring into an array of integers (string.chars.map(&:to_i)
    - Break if substring_size < 5
    - Push that substring into my collection_integers array
    - Increase string_start by 1 
    - Increase string_end by 1

- Iterate through collection_integers (array that contains sub arrays)
  - Reduce each sub array (multiplication)
  
- Choose biggest value from that array
=end

def greatest_product(string)
  collection_integers = []
  string_start = 0
  string_end = 4
  
  loop do
    current_substring = string[string_start..string_end]
    current_substring = current_substring.chars.map(&:to_i)
    break if current_substring.size < 5
    collection_integers << current_substring
    string_start += 1
    string_end += 1
  end
  
  collection_integers.map! do |sub_array|
    sub_array.reduce(:*)
  end
  
  collection_integers.max
end