using Printf
using Statistics

## array declaration,  arrays are mutable in julia
array_1 = zeros(Int16, 2 ,2)  # zeros array 2,2 represent 2d matrix
array_2 = Array{Int32}(undef, 5) #array with type Int32 and with undefined values
array_3 = Float64[] #Empty array of float64
array_4 = [1, 2 , 3, 4] # initializing array

## indexing arrays
println(array_4[1])
println(array_1[end])
println(array_4[:])
println(array_2[1:end]) # undefined type declares array with zeros
println(array_1[1,2]) # for indexing 2d array
println(array_3) ## Float 64 array object
println()

## array operations and comparisons
println(0 in array_2)
println(findlast(isequal(2), array_4))
println(findmax(array_4)) # returns value, position as tuple
println()

## mapping some function over iterator like arrays, similar to map in python
func(value) = (value >= 2) ? true : false
println(findall(func, array_4))
println(count(func, array_4))
println()

## some arrays function 
println(size(array_4))
println(length(array_4))
println(sum(array_4))

splice!(array_4, 3:2 , [8,9]) # adding new elements at the position 3
# an exclamation at the end of the function indicates 
# function can modify its arguments
println(array_4)

splice!(array_4, 2:3) # removed values from the index 2 to 3
println(array_4)

println(maximum(array_4)) #returns max element
println(findmax(array_4)) #returns max with pos
println(minimum(array_4)) #return min element
println(findmin(array_4)) #return min element with pos

println(array_4 / 2) ## broadcasting values returns decimal values
println(array_4 // 2) ## broadcasting values (returns rational values)
println()

## Hetrogenous nature of arrays
hetro_array = ["hello", 1 , 2, 3.14]

func_arr = [sin, cos, tan, abs] # can include func in arrays
for func in func_arr
    println(func(1))
end

## Multi dimesntional arrays
multi_array = [1 2 3; 4 5 6] ## initializing multi dim array
for i=1:size(multi_array)[1]
    for j=1:size(multi_array)[2]
        @printf("%d ", multi_array[i, j])
    end
    println()
end

println(multi_array[:,2]) # printing all rows second column
println(multi_array[2,:]) # print all columns of second row

collect_array = collect(1:2:10) # generates an array for the specified range
for i in collect_array print(i, ' ') end  # for loop can be written in single line
multi_arr_alt = [row * col for row in 1:5, col in 1:5]
println()
println(multi_arr_alt)
println()

## list comprehension
list_comp = [num^3 for num in 1:2:10]
println(list_comp)

## Pushing and popping elements 
push!(list_comp, 8)

## Generating random number list 
rand_list = rand(0:10 ,2,2) # generated 2d list of random num betweem 0 to 10
println(rand_list)
println()

## generating arrays from string
string_arr = split("hello world")
println(string_arr)