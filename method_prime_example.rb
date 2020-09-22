# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

#p odd_not_prime(15) == 3
#p odd_not_prime(48) == 10
#p odd_not_prime(82) == 20

=begin
PROBLEM
- Input: integer
- Output: integer

rules:
    - Explicit rules:
      - Write a method that determines how many positive integers less than or
        equal to 'x' are odd but not prime
      - Assume 'x' is an integer between 1 and 10_000
    
DATA STRUCTURES:
- Integers
- Array

ALGORITHM
- Go through every number from 1 up to the input integer
  - Determine if the number is off but not prime
    - If true, increase count by 1
    - If false, next number

SUB-PROCESS - Determine prime number
- Go through every number from 1 to the input integer
  - Return false if all numbers except 1 and input integer are prime
=end

def not_prime?(num)
  2.upto(num - 1) do |number|
    return true if num % number == 0
  end
  false
end

def odd_not_prime(num)
  new_array = []
  1.upto(num) do |number|
    new_array << number if number == 1
    new_array << number if number.odd? and not_prime?(number)
  end
  new_array.size
end

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20