#https://www.codewars.com/kata/59c5f4e9d751df43cf000035/train/ruby

=begin

PROBLEM:
- Input: string
- Output: integer

rules:
    - Explicit rules:
      - Writing a method that returns the length of the longest vowel substring
      - Given a lower case string as an input (both vowels/consonants,no spaces)
      - Vowels are aeiou
      
DATA STRUCTURE
- Array(?)
- Strings
- Hash(?)

ALGORITHM
- Go through every character in the string
  - Determine substrings that contain a vowel or more in a row
  - Place those vowels into a collection
  - Go through collection and determine the length of all substrings-
  - Return the length of the longest substring
  
SUB PROCESS - LINE 22
- Go through every character in the string
  - If the character is a vowel
    - Push that character into a sub_collection
  - If the character is not a vowel
    - Break out of our iteration
  
  - Push that sub collection into an another collection

ALGORITHM
- Go through the string
  - if the character is a vowel, increase the count by 1
  - if the character is not a vowel, push the current count to an array
    - reset the current count to 0
=end

VOWELS = %w(a e i o u)

def solve(s)
  sub_strings = []
  
  vowel_counter = 0
  
  s.chars.each do |current_letter|
    if VOWELS.include?(current_letter)
      vowel_counter += 1
    else
      sub_strings << vowel_counter
      vowel_counter = 0
    end
    
    sub_strings << vowel_counter
  end
  
  sub_strings.max
end