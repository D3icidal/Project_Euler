# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# (1..10).each do |number|
#   puts number  
# end

answer = 20 #starting at the lowest possible number
remainder = 1

#logic
while remainder != 0
  remainder = 0
  puts "\n\n\t\t\ttest number: #{answer} ================="
  (3..10).each do |num|
    remainder += answer % num
    puts "num: #{num}, remainder: #{answer % num}"
  end
  answer += 1
end