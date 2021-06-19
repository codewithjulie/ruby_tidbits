#Interesting string methods in #Ruby

# Ruby strings are mutable
str = "hello world"
str["hello"] = "goodbye"
puts str                  # "goodbye world"
puts str.object_id        # 60

# But they can freeze
str.freeze
str << "!"                # FrozenError: can't modify frozen String
str.frozen?               # returns true

# If reassigned, they are no longer frozen
str = "new string"
str << "!"
puts str                  # new string!
puts str.object_id        # 80

# The replace method does not reassign and will error if str was frozen
str.replace "hello world"
puts str                  # hello world
puts str.object_id        # 80

