def my_select(collection)
 # your code here!
 i = 0 
 numbers = []
 while i < collection.length
   if yield(collection[i]) == true
     numbers.push(collection[i])
   end
   i+=1 
 end 
 return numbers
end

nums = [1, 2, 3, 4, 5]
my_select(nums) {|num| num.even?}