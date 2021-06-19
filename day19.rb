
# Creating an array with default values
solution1 = Array.new(3, '?')
solution1[1] = "a"          # second element gets reassigned
p solution1                 # ["?", "a", "?"]
solution1[0].replace("b")   # first and third element point to the same object
p solution1                 # ["b", "a", "b"]


# Creating an array with default empty array
solution2 = Array.new(3, [])
solution2[1] = 5            # recall 1st and 3rd element point to the same obj
p solution2                 # [[], 5, []]
solution2[0] << 10
p solution2                 # [[10], 5, [10]]


# The better way to create an array with default
solution3 = Array.new(3) {'?'}
solution3[1].replace("a")   # each element points to different obj
p solution3                 # ["?", "a", "?"]


# Nested array with default values --> I encourage you to expirement!
Array.new(3, Array.new(3, :X))
Array.new(3) {Array.new(3) {:X}}