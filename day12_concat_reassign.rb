# Scenario 1
name1 = "Bob"
name2 = name1
name1.concat("by") # concat mutates name1, and can accept multiple arguments
# Note: '<<' works like 'concat' but accepts a single argument

puts name1     # Bobby
puts name2     # Bobby
puts name1.equal?(name2)  # true, they are still pointing to the same object

# Scenario 2
name1 = "Bob"
name2 = name1
name1 += "by"   # name1 gets reassigned, the same as name1 = name1 + "by"

puts name1      # Bobby
puts name2      # Bob
puts name1.equal?(name2)  # false, they no longer point to the same object