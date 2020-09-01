=begin

PROBLEM
- Input: array, integer
- Output: array

rules
    - Explicit rules:
      - Integer argument determines how many times a number can be repeated
      - No element within array can be repeated more than integer argument
        amount of times
    - Implicit rules:
      - Returns same elements in array if 1 is integer argument
      
Data Structure
- Array

ALGORITHM
- Go through our given input array
  - Push current number into a new collection IF: 
    - adding current number does not increase the instances 
    that number appears in that new collection by integer argument 
    amount of times

PSEUDOCODE
- Accept new array (array) and integer value (max_instances)
- Initialize empty array (final_motif)

- Iterate through array
  - count how many times current number appears in final_motif
  - If the count is >= max_instances
    - Do not push number
  - If the count is < max instances
    - push number

- Return final_motif
=end

def delete_nth(array, max_instances)
  return array if max_instances == 1
  final_motif = []
  
  array.each do |element|
    if final_motif.count(element) >= max_instances
      next
    else
      final_motif << element
    end
  end
  
  final_motif
end

 p delete_nth([1,1,1,1],2)
 p  delete_nth([20,37,20,21],1)