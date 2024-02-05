puts "Hello, Ruby"
# print "Hello, Ruby"

## == Define variable and const
#
# ===
#
# var
string = "Some String"
# const
STRING = "Const String"
# STRING = "Reassign" # cannot reassign | throw error

# Function declaration
#
#
def sum(a, b = 0)
  a + b
end

puts "The sum of 1 and 9 is: #{sum(1, 9)}"

# Conditional and loops
# =
# =
# ===
# if else
if true
  puts "Some condition is true"
else
  puts "Some condition is false"
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

# for in
fruits = ['apple', 'mango', 'orange']
for fruit in fruits
  puts "I like #{fruit} (for in)"
end

# similar to foreach
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
# ====
