#Ruby singleton methods allow you to change a single object's behavior, and it won't affect the other objects in the same class.

# *Note* does not work on number or symbol objects - understandable since they are immutable

special_string = "I am a special string"
regular_string = "I am a regular string"

# Recall that the String class already has an 'upcase' method
def special_string.upcase
  "✨✨✨ I AM A SPECIAL STRING ✨✨✨"
end

puts special_string.upcase    # ✨✨✨ I AM A SPECIAL STRING ✨✨✨
puts regular_string.upcase    # I AM A REGULAR STRING


# The String class does not have a 'special' method
def special_string.special
  "I can turn into a unicorn!"
end

puts special_string.special   # I can turn into a unicorn!

puts special_string

puts regular_string.special   # undefined method 'special'

# Recall that numbers are immutable
special_number = 5

def special_number.special
  5000
end

puts special_number.special   # can't define singleton (TypeError)





