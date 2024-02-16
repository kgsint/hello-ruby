=begin
  ref: https://ruby-doc.org/3.3.0/Array.html
      https://www.techotopia.com/index.php/Understanding_Ruby_Arrays
      https://www.techotopia.com/index.php/Advanced_Ruby_Arrays
=end

array = [true, false, 1, 20, 'string', ['a', 'b', 'c', 'd']]

# indexes and slice
array[-1] # output => ['a', 'b', 'c', 'd']
array[1..3] # array.slice(1..3) | output => [false, 1, 20]
array[-3..-1] # array.slice(-3..-1) | output => [20, 'string', ['a', 'b', 'c', 'd']]
array[-1][0] # output => 'a'
array[-1][1] # output => 'b'

array.index('string') # output => 4

# type
array[0].class # output => TrueClass
array[1].class # output => FalseClass
array[2].class # output => Integer
array[4].class # output => String
array[5].class # output => Array
array << { 'foo': 'bar' }
array[6].class # output => Hash

# length | *size also works the same way
array.length() # output => 6
array[-1].length() # output => 4

# include?
array.include?('string') # output => true
array.include?('foo') # output => false

# empty?
array.empty? # output => false
[].empty? # output => true

# combining | concat arrays
arrayOne = ['a', 'b', 'c', 'd']
arrayTwo = ['d', 'e', 'f']

combinedArray = arrayOne + arrayTwo # output => ['a', 'b', 'c', 'd', 'e', 'f']
arrayOne.concat(arrayTwo) # output => ['a', 'b', 'c', 'd', 'e', 'f']

# append
appendedArray = combinedArray << 'g' << 'h' << 'i'
appendedArray # output => ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i']

=begin
# Difference(-)
  returns *a new array* that is a copy of the first array with any items that also appear in second array removed
=end
arrayOne = ['a', 'b', 'c', 'd']
arrayTwo = ['c', 'e', 'd']
# with operator
arrayOne - arrayTwo #  output => ['a', 'b']
# with method
arrayOne.difference(arrayTwo) #  output => ['a', 'b']

=begin
# Union(|)
  concats two arrays. Duplicates are removed.
=end
arrayOne = ['a', 'b', 'c', 'd']
arrayTwo = ['c', 'e', 'd']
# with operator
arrayOne | arrayTwo # output => ['a', 'b', 'c', 'd', 'e']
# with method
arrayOne.union(arrayTwo) # output => ['a', 'b', 'c', 'd', 'e']

=begin
Intersection (&)
creates *a new array* from two existing arrays containing only elements that are common to both arrays - duplicates are removed
=end

arrayOne = ['a', 'b', 'c', 'd']
arrayTwo = ['c', 'e', 'd']
# with operator
arrayOne & arrayTwo # output => ['c', 'd']
# with method
arrayOne.intersection(arrayTwo) # output => ['c', 'd']

# unique
combinedArray = arrayOne + arrayTwo # output => ['a', 'b', 'c', 'd', 'c', 'e', 'd']
combinedArray.uniq # output => ['a', 'b', 'c', 'd']
# alter original array | strip out duplicates
combinedArray.uniq! # output => ['a', 'b', 'c', 'd']

=begin
 pushing, poping | shift, unshift
=end
colors = ['red', 'blue']
colors.push "yellow"
colors.push("purple")
colors # output => ['red', 'blue', 'yellow', 'purple']

colors.pop
colors # output => ['red', 'blue', 'yellow']
colors.pop # output => ['red', 'blue']

colors.unshift('orange')
colors # output => ['orange', 'red', 'blue']

colors.shift
colors # output => ['red', 'blue']

colors.shift
colors # output => ['blue']

=begin
sorting
=end
numbers = [1, 4, 62, 71, 9, 11, 2, 33, 13, 51]
puts numbers.sort # output => [1, 2, 4, 9, 11, 13, 33, 51, 62, 71]
