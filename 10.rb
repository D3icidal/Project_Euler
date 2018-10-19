# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.


mtable = [] #nil = prime (because it does not show up on multiplication table)

array_of_primes = []
target = 2000000 #all primes below this number

sum_of_primes = 0

half = target/2
stop = Math.sqrt(target) - 1
puts "stop is at #{stop}"

(2..stop).each do |x|
  (2..half).each do |y|
    break if x*y > target
    # puts "x: #{x} * y:#{y} = #{x*y}"
    mtable[x*y] = true
  end
end

mtable[0] = true
mtable[1] = true
p mtable
mtable.each_index{ |i|  array_of_primes << i if mtable[i] == nil }
p array_of_primes
# array_of_primes.reject! {|x| x > 3}
puts array_of_primes.reduce(0, :+)