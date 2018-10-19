# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# (1..10).each do |number|
#   puts number  
# end


# pseudo
# => loop through all numbers
  # => with each pass, make another loop for numbers 3..20
    # => in the 3..20 loop, take each number and add the remainder to a variable. If that variable ever has a remainder, then move on.

#improvements
  #just use a flag, if there is a remainder, break.



################# => first try
answer = 20 #starting at the lowest possible number
remainder = 1

#logic
while remainder != 0
  remainder = 0
  # puts "\n\n\t\t================= test number: #{answer} ================="
  (3..20).each do |num|
    remainder += answer % num
    # puts "num: #{num}\t\tremainder: #{answer % num}"
  end
  answer += 1
end
puts answer
###############   solved? in 338s


################ => second try (aiming for speed)
# answer = 0
# test_num = 20 #starting at the lowest possible number
# remainder = true

# #logic
# while remainder == true
#   remainder = false
#   # puts "\n\n\t\t================= test number: #{test_num} ================="
#   (3..20).each do |num|
#     (remainder = true) && (break)if test_num % num != 0 
#     # puts "num: #{num}\t\tremainder: #{test_num % num}"
#   end
#   test_num += 1
# end
# puts test_num-1
############### => answer 232792560 in 68s