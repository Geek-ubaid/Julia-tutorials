using Printf 
using Statistics

## creating and initializing tuples [not mutable]
tuple_1 = (1,2,3,4)
println(tuple_1[1])
println(tuple_1[1:3])

## tuple of tuples
tuple_2 = ((1, 2), (3, 4))
println(tuple_2[1][2])
# tuple_2[1][2] = 5 Error because tuples are not mutable
# println(tuple_2[1][2])

## named tuples 
tuple_3 = (hello = ("hello", 1), world = ("world", 2))
println(tuple_3.hello, tuple_3.world) ## tuple of dictionaries


## Dictionaries [mutable]
dict_1 = Dict("message"=>"hello world", "key"=>12)
println(dict_1["message"])

## Mutable dictionaries and functions
delete!(dict_1, "message")
println(haskey(dict_1, "message"))
println(in("message"=>"hello world"))

## iterating keys and values in dictionaries
println(keys(dict_1))
println(values(dict_1))

println()

for (key,value) in dict_1
    println(key, " : ", value)
end

## sets in julia [mutable, homogeneous]

set_1 = Set(["hello", "world", "julia"])
println(set_1)

## pushing element to set
push!(set_1, "lang")

## Set functions
set_2 = Set(["Ubaid Usmani"])

println(union(set_1, set_2))
println(intersect(set_1, set_2))
println(setdiff(set_1, set_2))

