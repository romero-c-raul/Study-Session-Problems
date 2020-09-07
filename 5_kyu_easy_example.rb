
# https://www.codewars.com/kata/5251f63bdc71af49250002d8/train/ruby

# Create a method called "power" that takes two integers and returns the value of the first argument raised to the power of the second. Return nil if the second argument is negative.

# Note: The ** operator has been disabled.

# Examples:



=begin

PROBLEM
- Input: integer, integer
- Output: integer

rules:
    - Explicit rules:
      - Writing a method that takes two integers and 
        RETURNS the valur of first argument raised to the power
        of the second argument
      - Return nil if the second argument is negative
      - Return 1 if second argument is zero

DATA STRUCTURE:
- Integers

ALGORITHM
- Take integer in first argument
  - Add it to an array as many times as it is indicated in the
    second argument
- Return nil if power < 0
- Return 1 if power == 0



4. Clarifying Questions
    - What are the extremes, limits on both ends
    - What to do about nil or empty value or 0
    
    
- Reduce array by multiplication

PSEUDOCODE
- Accepting an integer as first argument (integer)
- Accepting an integer as second argument (power)
- Initializing an empty array (number_collection)

- Start a loop
  - Push integer into number collection
  - Break when number_collection size >= power

- Reduce number_collection (:*)
=end

def power(integer, power)
  number_collection = []
  return nil if power < 0
  return 1 if power == 0
  
  power.times do
    number_collection << integer
  end
  
  number_collection.reduce(:*)
end