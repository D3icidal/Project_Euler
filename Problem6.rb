#https://projecteuler.net/problem=6
# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


sum_Of_Sq = 0
sq_Of_Sum = 0
answer = 0
for i in 1..100 do
  p i
  sum_Of_Sq += i * i
  puts "index #{i} sumOfSq= #{sum_Of_Sq}"
end


for i in 1..100 do
  p i
  sq_Of_Sum += i
end
puts "sq_Of_Sum before squaring (sum of all numbers)= #{sq_Of_Sum}"
sq_Of_Sum = sq_Of_Sum * sq_Of_Sum
p sq_Of_Sum

answer = sq_Of_Sum - sum_Of_Sq
puts "The answer (sum square difference) is #{answer}"
#right answer should be 25164150 (according to web)

