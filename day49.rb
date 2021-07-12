animals = ["cat", "dog", "frog", "starfish", "elephant seal"]

def [](value)
  # some code
end

animals.[](2)     # => "frog" | how the method is written
animals.[]2       # => "frog" | removing parentheses
animals.[] 2      # => "frog" | replace parentheses with space
animals[2]        # => "frog" | argument within the brackets

animals.[](2, 3)  # => ["frog", "starfish", "elephant seal"]
animals.[]2, 3    # => ["frog", "starfish", "elephant seal"]
animals.[] 2, 3   # => ["frog", "starfish", "elephant seal"]
animals[2, 3]     # => ["frog", "starfish", "elephant seal"]

animals.[](0..3)  # => ["cat", "dog", "frog", "starfish"]
animals.[]0..3    # => ["cat", "dog", "frog", "starfish"]
animals.[] 0..3   # => ["cat", "dog", "frog", "starfish"]
animals[0..3]     # => ["cat", "dog", "frog", "starfish"]


