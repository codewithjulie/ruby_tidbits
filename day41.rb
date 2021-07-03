# Enumerator: a class that includes the Enumerable module
# Enumerable: a module that provides methods that allows you to iterate through a collection. Requires an each method



Enumerator.include_modules    # => [Enumerable, PP::ObjectMixin, Kernel]


# I didn't know that you can pass in an optional block with #count
animals = ["cat", "dog", "frog"]
animals.count                                       # => 3
animals.count {|animal| animal.start_with?("c")}    # => 1


# #with_index works like #each_with_index but includes offset (starting index)
animals.each.with_index(offset = 1) do |animal, idx|   # idx starts at 1
  puts "#{idx}: #{animal}"
end

# 1: cat
# 2: dog
# 3: frog
# => ["cat", "dog", "frog"]


# Now I understand why there is a period in 'each_char.with_index'!!
str = "hello"
str.chars             # => ["h", "e", "l", "l", "o"]
str.chars.class       # => Array
str.each_char         # => #<Enumerator: ...>
str.each_char.class   # => Enumerator


