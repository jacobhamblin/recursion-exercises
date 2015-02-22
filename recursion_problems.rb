#Problem 1: You have array of integers. Write a recursive solution to find
#the sum of the integers.

def sum_recur(array)
  array.empty? ? 0 : array[-1] + sum_recur(array[0..-2])
end


#Problem 2: You have array of integers. Write a recursive solution to
#determine whether or not the array contains a specific value.

def includes?(array, target)
  return false if array.empty?
  array[-1] == target ? true : includes?(array[0..-2], target)
end


#Problem 3: You have an unsorted array of integers. Write a recursive
#solution to count the number of occurrences of a specific value.

def num_occur(array, target)
  return 0 if array.empty?
  array[-1] == target ? 1 + num_occur(array[0..-2], target) : num_occur(array[0..-2], target)
end


#Problem 4: You have array of integers. Write a recursive solution to
#determine whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
  return false if array.size < 2
  array[-1] + array[-2] == 12 ? true : add_to_twelve?(array[0..-2])
end


#Problem 5: You have array of integers. Write a recursive solution to
#determine if the array is sorted.

def sorted?(array)
  return true if array.size < 2
  array[-1] >= array[-2] ? sorted?(array[0..-2]) : false
end


#Problem 6: Write the code to give the value of a number after it is
#reversed. Must use recursion. (Don't use any #reverse methods!)

def reverse(number)
  number < 10 ? number : (number % 10 ) * 10 ** (number / 10).to_s.size + reverse(number / 10)
end
