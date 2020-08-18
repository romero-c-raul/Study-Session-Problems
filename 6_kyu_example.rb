=begin

What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false




Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

anagrams('laser', ['lazing', 'lazy',  'lacer']) => []

PROBLEM
- Input: string and array of strings
- Output: array of strings

rules:
    - Explicit Requirements:
      - Find anagrams of word from list
      - Return array of anagrams
      - Or return an empty array if there are none
      
    - Implicit Requirement: 
      - Elements in the returned array should be the same size as
        the first argument

Problem Domain:
  - What is an anagram? Two words are anagrams if they contain the same letters,
  and those same letters are same count
  
DATA STRUCTURE
- Hash

ALGORITHM
- Accepting a string as first argument
- Accpeting an array of strings as second argument

- Initialize a collection

- Create method to obtain letter count in word
  - Iterate through each character in the word
    - For each character
      - If character is in the collection, add a value of 1
      - If character is not in the collection, create it with value of 0
  - Return the collection

- Initialize an empty array

- Start a loop
  - Compare the number count of each element in array with the number count,
    of the first argument
  - If the counts are the same, then element will be pushed into a new array

- Return collection(hash)
=end

def letter_counter(string)
  anagram_counter = Hash.new(0)
  
  string.each_char do |letter|
    anagram_counter[letter] += 1
  end
  
  anagram_counter
end


def anagrams(string, array)
  
  anagram_collection = []
  
  original_string_letter_count = letter_counter(string)
  
  array.each do |word|
    if letter_counter(word) == original_string_letter_count
      anagram_collection << word
    end
  end
  
  anagram_collection
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']

p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']

p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []



def anagrams(word, words)
  result = []
  anagram_testing_chars = word.chars
  characters_of_words_to_test = words.map do |element|
    element.chars
  end
  characters_of_words_to_test.map do |element|
    if element.sort == anagram_testing_chars.sort
      result << element.join
    end
  end
result
end