using Printf
using Statistics

## Dynamically typed ,no datatype to be defined

input_var = "text"
println(input_var)

input_var = 2
println(input_var)

## Asserting datatypes

function assertDataType()
    x::Int16 = 10
    x = 1123.012
end

# assertDataType()


## Other data types

# BigFloat
# BigInt
# char = ''
# string = ""

## Type casting 

cast_int = UInt8(trunc(3.12))
println(cast_int)

cast_char = Char(120) ## converts to ascii equivalent
println(cast_char)

cast_string = parse(Float64, "1")
println(cast_string)

cast_string = parse(Int16, "1")
println(cast_string)


## Working with strings

string_in = "hello world"
println(length(string_in))

## Indexing strings
println(string_in[2])
println(string_in[end])
println(string_in[1:5]) # indexing start from 1 not 0

## string concatenation
string_concat = string("hello", "world", "julia")
println(string_concat)

string_concat = string("hello" * "world" * "julia") # '+' is not used to concat, instead '*' is used
println(string_concat)

## String formatting
var1 = "hello"
var2 = "world"
num1 = 1
num2 = 2
println("$var1 $var2 julia") # for string formatting
println("$num1 + $num2 = $(num1 + num2)") # adding numbers 

## Mutli line strings
multiline = """ this 
    is 
    a 
    multi line
    comment 
"""

## string functions
println("hello" > "world") # string comparisons
println(findfirst(isequal('l'), "hello")) ## find the first occurence of the letter in the string
println(occursin("llo ", "hello world")) # check for substrings in a string

## conditional statements
excitement = 100
if excitement > 100
    println("too excited!!")
elseif excitement <100 && excitement>50
    println("I am feeling fine")
end

## printf function
@printf("true || false = %s\n" , true || false ? "true" : "false") # using printf function imported


## looping statements
index = 1
string_print = "hello world julia"
while index<length(string_print)
    if(index % 2 == 0)
        print(string_print[index])
        global index+=1 # for incrementing non local index var
        continue # just to show the control statements
    end

    global index+=1
    if index >=10
        println(" Breaking here")
        break
    end
end

## variant of looping

for_string = "hello world julia"
for i = 1:length(for_string)
    print(for_string[i])
end

println()

for i in "hello world julia" 
    print(i)
end

println()

## Combination of characters from two different strings
for i in "hello", j in "world" #printing permutations as combination
    print(i,j)
    println()
end

for i in "hello", j in "world"  # Printing permuations as tuple
    print((i,j))
    println()
end

## slicing numbers with steps
for i = 1:2:10 #printing all odd numbers
    print(i)
end