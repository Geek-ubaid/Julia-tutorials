using Printf
using Statistics

## Can wprk with formula expressions

x = 5
println(x^2 + 2x + 5)

## working with dot operator
array_1 = [1, 2, 3]
array_2 = [4, 5, 6]
println(array_1 .+ 3)
println(array_1 .* array_2) # syntax for dot operator .(arithmatic ops)

## Working with enumerators
@enum color begin
    red = 1
    blue = 2
    green = 3
    yellow = 4
end
favcolor = green::color
println(favcolor)
println(Int(blue))
println(string(blue))

## Working with symbols [mutable strings]
:helloworld
println(:helloworld)
println()

## working with structs 9composite data types)

# structs are immutable inorder to override it by adding mutable keyword like
# mutable struct <struct_name>
struct Customer
    name::String
    balance::Float32
    id::Int
end

customer1 = Customer("Ubaid", 10.50, 123)
println(customer1.name)

## Abstract types
abstract type Animal end

struct Dog <: Animal
    name::String
    bark::String
end

struct Cat <: Animal
    name::String
    meow::String
end

animal1 = Dog("Bowser", "Ruff")
animal2 = Cat("Muffin", "Meow")

function makeSound(animal::Dog)
    println("$(animal.name) says $(animal.bark)")
end

function makeSound(animal::Cat)
    println("$(animal.name) says $(animal.meow)")
end

makeSound(animal1)
makeSound(animal2)
println()

## Exception handling
print("enter a number 1 : ")
num1 = chomp(readline()) # chomp removes new line char

print("enter a number 2 : ")
num2 = chomp(readline()) # string input using readline

try
    val = (parse(Int32, num1))/ (parse(Int32, num2))
    if  val == Inf
        error("Divide by zero error")
    else
        println(val)
    end
catch e
    println(e)
end
println()

## File handling

# writing file
open("test.txt" , "w") do file
    write(file, "hello world julia \n Julia is great\n")
end

# reading file at once
open("test.txt") do file
    data = read(file, String)
    println(data)
end

# reading line by line
open("test.txt") do file
    for line in eachline(file)
        println(line)
    end
end