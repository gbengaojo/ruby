def my_method
   puts "reached the top"
   yield
   puts "reached the bottom"
end

my_method { puts "reached yield" }

########################
puts "\n\n"
def my_map(array)
   new_array = []

   for element in array
      new_array.push yield element
   end

   puts new_array
end

my_map([1, 2, 3]) do |number|
   number * 2
end
