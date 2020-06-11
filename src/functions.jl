using Printf
using Statistics

## functions in julia simple method
getSum(x,y) = x + y
x, y = 1, 2

@printf("%d + %d = %d\n", x,y, getSum(x,y))

## Multi expression functions 
function canVote(age=16)
    if age>=18
        return "Can vote"
    else
        return "cannot vote"
    end
end

@printf("age = %d => %s\n", 18, canVote(18))

## function arguments are passed by values 

args_1 = 5
function changeValue(arg)
    args_1 = 10 # we can change it using global keyword
end

changeValue(args_1)
println(args_1) ## will print 5 because passed by value


## Multiple arguments passed to functions

function multiVaFunc(args...)
    sum = 0 
    for i in args
        sum+=i
    end
    println(sum)
end

multiVaFunc(1,2,3,4)

## returning multiple diff values
function returnMulti(input_arg)
    return (input_arg + 1, input_arg + 2)
end

println(returnMulti(3))
println()

## functions returning functions

function returnFunc(arg)
    return function(x) return x * arg end
end
func_arg = returnFunc(3)
println(func_arg(6))

## Sending different kind of arguments to function

function multiInput(arg1::Number, arg2::Number)
    return arg1 + arg2
end

function multiInput2(arg1::String, arg2::String)
    return parse(Int32, arg1) + parse(Int32, arg2)
end

println("5 + 4 = ", multiInput(5, 4))
println("5 + 4 = ", multiInput2("5", "4"))
println()

## Anonymous functions

anonymous_func = map(arg -> arg * arg, [1,2,3])
println(anonymous_func)

anonymous_func2 = map((arg1, arg2) -> arg1 + arg2, (1,2), (3, 4)) # arguments should be equal and be present in both
println(anonymous_func2) # return tuple if input is in tuple and list when list

reduce_func = reduce(*, 1:10) # change the arithmatic ops in the first argument for any op you want to apply
println(reduce_func)
println()

## print the longest word in a sentence using reduce
input_sentence = "hello world julia"
sentence_array = split(input_sentence)
longest_word = reduce((x, y) -> length(x) > length(y) ? x : y, sentence_array)
println(longest_word)
println()

## inbuilt Functions

@printf("5 + 4 = %d\n", (5 + 4))
@printf("5 - 4 = %d\n", (5 - 4))
@printf("5 * 4 = %d\n", (5 * 4))
@printf("5 / 4 = %d\n", (5 / 4))
println("5 % 4 = ", (5 % 4))
@printf("5 ^ 4 = %d\n", (5 ^ 4))
 
@printf("round(3.5) = %d\n", round(3.5))
@printf("floor(3.5) = %d\n", floor(3.5))
@printf("ceil(3.5) = %d\n", round(3.5))
@printf("abs(-3.5) = %d\n", abs(-3.5))
@printf("sqrt(100) = %d\n", sqrt(100))
@printf("cbrt(100) = %d\n", cbrt(100))
@printf("hypot(90,90) = %d\n", hypot(90,90))
@printf("exp(2) = %d\n", exp(2))
@printf("log(100) = %d\n", log(100))
@printf("log2(100) = %d\n", log2(100))
@printf("log10(100) = %d\n", log10(100))

# all arithematic functions
# all maths function like ceil floor abs
# Trig fucntions like sin, asin, sinh, sinc etc

