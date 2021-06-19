# Calling String#replace
str = "hello"           # "hello"
str.object_id           # 60 (str is an object)
str[0].object_id        # 80 (str[0] is another object)

str[0].replace("H")     # "H"
str[0].object_id        # 100 (new object)
str[0]                  # "h"
str                     # "hello"
str.object_id           # 60 (same object)
str[0].object_id        # 120 (different object as before)

str.replace("Hello")    # "Hello"
str                     # "Hello"
str[0].object_id        # 140 (another different object)


# Doing the same thing with arrays of characters, different outcome
arr = ["b", "a", "t"]   # ["b", "a", "t"]
arr.object_id           # 160 (arr is an object)
arr[0].object_id        # 180 (arr[0] is another object)

arr[0].replace("c")     # "c"
arr                     # ["c", "a", "t"]
arr[0].object_id        # 180 (same object as before)



