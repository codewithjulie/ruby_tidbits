animals = ["cat", "dog", "frog"]

# Remember that map returns a new array
animals.map {|animal| animal.upcase}  # => ["CAT", "DOG", 'FROG']
animals.map(&:upcase)                 # => ["CAT", "DOG", 'FROG']
animals                               # => ["cat", "dog", "frog"]

# But map! changes the current array
animals.map!(&:upcase)                # => ["CAT", "DOG", 'FROG']
animals                               # => ["CAT", "DOG", 'FROG']






