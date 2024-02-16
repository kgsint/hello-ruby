=begin
  https://www.techotopia.com/index.php/Ruby_Ranges
=end

(1..10).class # output => range
1..10 # create a range from 1 to 10
1...10 # create a range from 1 to 9

'a'..'h' # create a range from 'a' to 'h'
'a'...'h' # create a range from 'a' to 'g'

# to array
(1..10).to_a # output => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
(1...10).to_a # output => [1, 2, 3, 4, 5, 6, 7, 8, 9]

nums = 1..10
nums.min # output => 1
nums.max # output => 10

words = 'cab'..'car'
words.include?('cai') # output => true

words.each {|word| "Hello, #{word}"}
# output => Hello, cab | Hello, cac | Hello, cad | Hello, cae | Hello, caf | Hello, cag | Hello, cah | Hello, cai | Hello, caj | Hello, cak | Hello, cal | Hello, cam | Hello, can | Hello, cao | Hello, cap | Hello, caq | Hello, car

score = 60

result = case score
  when 0...40 then 'Fail'
  when 40...80 then 'Pass'
  when 80..100 then 'Excellent'
end

puts result
