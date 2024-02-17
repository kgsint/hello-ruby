=begin
*ref: https://ruby-doc.org/3.3.0/String.html
*regex: https://ruby-doc.org/3.3.0/Regexp.html
=end

# match string with regex pattern
# similar to preg_replace() in PHP
greeting = "Good Morning"
greeting.sub(/o/, '_') # outputs => G_od Morning
greeting.gsub(/o/, '_') # outputs => G__d M_rning

# length | size of the string
greeting.length # output => 12
greeting.size # output => 12

# index
greeting.index('o') # output => 1
greeting.rindex('o') # output => 6

# include?
greeting.include?('G') # output => true
greeting.include?('h') # output => false

# eql?
greeting.eql?('Good Morning') # output => true
greeting.eql?('Good Night') # output => false

# starts with
greeting.start_with?('G') # output => false
greeting.start_with?('Good') # output => true
greeting.start_with?('Morning') # output => false

# ends with
greeting.end_with?('Morning') # output => true
greeting.end_with?('g') # output => true
greeting.end_with?('Good') # output => false

# trim or strip whitespaces
string_with_spaces = "     some random string    "
string_with_spaces.length # string length => 27
string_with_spaces.lstrip.length # string length => 22
string_with_spaces.rstrip.length # string length => 23
string_with_spaces.strip.length # string length => 18

# slice
string = "some string"
string[0] # first character |  output => "s"
string[-1] # last character |  output => "g"

string[0..4] # output => "some"
string[0, 4] # output => "some"

string[11, 2] # output => nil

# if start is negative, end become the length of the new string
string[-6, 6] # output => "string"

# casing
string.upcase! # output => "SOME STRING"
string.downcase! # output => "some string"
string.capitalize! # output => "Some String"
string.swapcase # output => "sOME STRING"

# replace entire string with a new string
'foo'.replace('bar') # output => "bar"

# reverse
'foo'.reverse # output => "oof"

# Ways of declaring string
myString = String.new("A string is a string")
# puts myString

stringOne = %&This is another "string"&
# puts stringOne

stringTwo = %[This is string two "!"]
# puts stringTwo

stringThree = %{This is string three}
# puts stringThree

stringFour = %(This is string four)
# puts stringFour

myHereDoc = <<DOC
This is my heredoc text
This is a new line
    Thank You,
DOC
# puts myHereDoc
