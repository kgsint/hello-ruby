puts "Hello, Ruby"
# print "Hello, Ruby"

=begin
Define variable and const
=end
string = "Some String"
# const
STRING = "Const String"
# STRING = "Reassign" # cannot reassign | throw error

=begin
Function declarations
=end
def sum(a, b = 0)
  a + b
end

puts "The sum of 1 and 9 is: #{sum(1, 9)}"

# multiple arguments packed as array (like rest parameters in JS and PHP)
def sumMultiple(*nums)
  total = 0
  # == block style
  # nums.each do |num|
  #   total += num
  # end

  # == inline style
  nums.each { |num| total += num }

  return total
end

puts "The sum of 1, 2, 3, and 4 is #{sumMultiple(1, 2, 3, 4)}"

# alias function | method
alias multiSum sumMultiple
"invoke from alias function: #{multiSum(1, 2, 3, 4)}" # output => 10

=begin
Conditional and loops
=end

# if else
if true
  puts "Some condition is true"
else
  puts "Some condition is false"
end

# unless
unless false
  puts "Something's going on"
else
  puts "Whatever!"
end

# ternary
age = 21
puts age >= 18 ? 'adult' : 'non-adult'

# similar to for loop
# blocks in Ruby can be used as anonymous functions
5.times do |i|
  puts "#{i + 1}th time loop"
end
# while loop
count = 1
while count < 3
  puts "count = #{count} for while loop"
  count += 1
end

count = 0
# until
until count > 3
  puts "count = #{count} for until loop"
  count += 1
end
# for in
fruits = ['apple', 'mango', 'orange']
for fruit in fruits
  puts "I like #{fruit} (for in)"
end

# similar to foreach but object-oriented
fruits.each do |fruit|
  puts "I like #{fruit} (each)"
end

# similar to switch case without break keyword but more readable
role_id = 3
case role_id
when 1
  puts "Admin"
when 2
  puts "Moderator"
when 3
  puts "Default user"
end

month = 1
stringMonth = case month
  when 1 then 'Jan'
  when 2 then 'Feb'
  when 3 then 'Mar'
  when 4 then 'Apr'
  when 5 then 'May'
  when 6 then 'Jun'
  when 7 then 'Jul'
  when 8 then 'Aug'
  when 9 then 'Sep'
  when 10 then 'Oct'
  when 11 then 'Nov'
  when 12 then 'Dec'
end

stringMonth # output => 'Jan'
# ====
