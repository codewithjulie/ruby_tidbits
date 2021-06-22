# Unlike JavaScript functions that can be saved to a variable and passed around, you cannot do the same for Ruby blocks, however...


animals = ["cat", "dog", "frog"]

# Recall the block from yesterday...can't save it to a variable
upcase_animal_block = { |animal| animal.upcase }
animals.map(upcase_animal_block)    # => syntax error, unexpected '}'...

# If I wrap it inside of a proc, I should be able to pass it around...
upcase_animal_proc = Proc.new { |animal| animal.upcase }
animals.map(upcase_animal_proc)     # => wrong number of arguments...

# Oh, gotta use the ampersand in front of it, to turn it back into a block
animals.map(&upcase_animal_proc)    # => ["CAT", "DOG", "FROG"]

# So yesterday's example was a proc that we turned back into a block?
animals.map(&:upcase)               # => ["CAT", "DOG", "FROG"]



