=begin
A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward as forward.
Examples of numerical palindromes are:
​
2332
110011
54322345
​
You'll be given 2 numbers as arguments: (num,s). Write a method which returns an array of s number of numerical palindromes that come after num. If num is a palindrome itself, it should be included in the count.
​
Return "Not valid" instead if any one of the inputs is not an integer or is less than 0.
​
Single digit numbers will NOT be considered numerical palindromes.
​
p palindrome(6,4) == [11,22,33,44]
p palindrome(75,1) == [77]
p palindrome(19,3) == [22,33,44]
p palindrome(101,2) == [101,111]
p palindrome("ACCDDCCA",3) == "Not valid"
p palindrome(773,"1551") == "Not valid"
p palindrome(-4505,15) == "Not valid"
p palindrome(20,0) == []
p palindrome(0,4) == [11,22,33,44]
​
​
Problem:
- Write a method that accepts 2 arguments: 1) Integer 2) Number of Palindromes
- Palindrome is a sequence of characters as backwards and forwards. E.g. 1331 == 1331
- Return Valid Array means the number of Palindromes should equal the 2nd argument (array.size == s)
- Return "Not valid" string if arguments are less than zero or not an Integer
- Single digit numbers are not palindrome
​
Example Test Cases (Implicit Rules):
- First example: Start at 6, and return 4 palindromes
- 2nd example: start at 77
- first argument is a string, return "Not Valid"
- second argument is a string, return "Not Valid"
- first argument is negative, return "Not Valid"
- if the second argument is zero, that should be valid
​
Data Structure:
- Input?
first paramtner - integer, 0 or greater
second paramtner - integer, 0 or greater
??intilizase ans arr --
- Output?
if both paramter are integer
  array of integers that are palindromes
else
  return a string of "not valid"
​
Julia
1. Validate arguments num and s (integer >= 0)
  num.to_s.to_i == num
  - If invalid, return "Not valid"
2. Initialize answer_array = [], counter = num
3. While answer_array.size <= s do
  - counter is palindrome? => counter.to_s.reverse == counter.to_s
    - If true, add to array
    - If false, next
  - counter += 1
4. Return answer_array
​
​
Pauline
Algo
1. input validation
  a. if first element isn't valid, return not valid
  b. if second element isn't valid, return not valid
2. init empty ans array
3.  starting at num, check if num is palindrom
​
4. if num is palindrome, add it to ans array
5. otherwise, increment num b 1
6. continue until ans array has s elements
7. return the array
​
Raul
- Accept integer as first and second arguments
- Validate first and second arguments by checking if
  they are an integer (0 or greater)
​
- Return error message ("Not Valid") if either argument is not valid
​
- Initialize a collection to store integers
​
- Start a loop
  - Within loop, we will check if our current value (starting from
     first integer) is a palindrome
     - We will convert our integer to string, reverse it, turn back to integer
      and if it is equal to our current value, then it is a palindrome
      (except single digit number)
​
  - If value is a palindrome, push value to collection
  - Add 1 to our current value
​
  - Stop loop when the elements in collection equal number
    specified in second argument
​
- Return collection of integers
​
Gwen
​
- intialize empty array to hold the panlindromes
- if one of the argument is less than 0 or not an integer, return 'Not valid'
- otherwise, do the following:
  - create a loop to find the panlindromes from the given integer and exit the loop when the number of panlindromes goes to 0
    - if the given integer is a panlindromes, append the integer to the array, decrease the number of panlindromes by 1
    - if not, increase the given integer by 1 and check to see if a panlindrome (Split the integer and the digits are the same going forward and backward)
      - if it is, append it to the array, decrease the number of panlindromes by 1
- Return the array
​
Mandy
1. is_palindrome?
    - integer to string
    - revered the string and check if it's the same
    - ignore any inputs that are length 1
2. Loop, incremented input (first argument) by one
    - check if is_palindrome?
    - break out of the loop when array.size == s
3. is_valid?
    - Are both of them Integer
    - Are both of them >= 0
​
=end
​
def is_palindrome?(number)
  number.to_s == number.to_s.reverse && number.to_s.size >1
end
​
def palindrome(num, s)
  if num.class != Integer || num < 0
    return "Not valid"
  end
  if s.class != Integer || s < 0
    return "Not valid"
  end
  array = []
  loop do
    if is_palindrome?(num) == true
      array << num
    end
    break if array.size == s
    num += 1
  end
  array
end
​
###########################################################
def palindrome(num, length)
  return "Not valid" if !valid?(num, length)
​
  result = []
​
  until result.size == length
    result << num if is_palindrome?(num.to_s)
    num += 1
  end
​
  result.map { |digit| digit.to_i }
end
​
def is_palindrome?(num)
  num.to_s == num.to_s.reverse &&
    num.size > 1
end
​
def valid?(num, length)
  num.is_a?(Integer) &&
    length.is_a?(Integer) &&
      (num >= 0 && length >= 0)
end
​
 p palindrome(6,4) == [11,22,33,44]
p palindrome(75,1) == [77]
p palindrome(19,3) == [22,33,44]
p palindrome(101,2) == [101,111]
p palindrome("ACCDDCCA",3) == "Not valid"
p palindrome(773,"1551") == "Not valid"
p palindrome(-4505,15) == "Not valid"
p palindrome(20,0) == []
p palindrome(0,4) == [11,22,33,44]

# ------------------------------------------My algorithm----------------------------------------------------

=begin

ALGORITHM

- Accept integer as first and second arguments
- Validate first and second arguments by checking if
  they are an integer (0 or greater)
  
- Return error message ("Not Valid") if either argument is not valid
  
- Initialize an empty array to store integers

- Start a loop
  - Within loop, we will check if our current value (starting from 
     first integer) is a palindrome
     - We will convert our integer to string, reverse it, turn back to integer
      and if it is equal to our current value, then it is a palindrome 
      (except single number)
      
  - If value is a palindrome, push value to collection
  - Add 1 to our current value
  
  - Stop loop when the elements in collection equal number
    specified in second argument

- Return array of integers
=end




# p palindrome(6,4) == [11,22,33,44]
# p palindrome(75,1) == [77]
# p palindrome(19,3) == [22,33,44]
# p palindrome(101,2) == [101,111]
# p palindrome("ACCDDCCA",3) == "Not valid"
# p palindrome(773,"1551") == "Not valid"
# p palindrome(-4505,15) == "Not valid"
# p palindrome(20,0) == []
# p palindrome(0,4) == [11,22,33,44]