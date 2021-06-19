# Today I learned about the Set class, which stores unique items. Not to be confused with Array#uniq which returns a new array of unique values


# require 'set'              # Must be required to use

animals = Set.new          # #<Set: {}>   

animals << 'frog'          # #<Set: {"frog"}>
animals << 'dog'           # #<Set: {"frog", "dog"}>
animals << 'cat'           # #<Set: {"frog", "dog", "cat"}>
animals << 'frog'          # #<Set: {"frog", "dog", "cat"}>

animals.include?('cat')    # Constant time look up vs. Array which is O(n)

# A set is basically a hash. I'm remembering what happens when we add a key value pair where the key already exists. It also has constant time look up due to the hash function that takes in a key and converts it to an 'index'



# I also learned that I can look in the Ruby standard library for a specific class. If I want to look at the Set class, I would find the set.rb file. 