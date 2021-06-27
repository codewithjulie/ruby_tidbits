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



# From Matheus Richard, other ways to save a block to a variable
a = proc { |animal| animal.upcase }
b = lambda { |animal| animal.upcase }
c = ->(animal) { animal.upcase }

# From @theleastbad
# The most significant difference between lambdas and procs is that lambdas have a stricter function signature. If you specify `->(context) { puts context }`, you can only reference that lambda with one parameter... no more, no less.

# From @codefolio
# Yeah, the syntax error happens on the "try to assign a block to a variable" line. You can grab a block that was passed into a method, though:

def get_the_block(&block)
  return block
end

upcase_block = get_the_block { |a| a.upcase }

This works basically like using "proc".

I say "basically" because there are some very small differences between proc and lambda. And if you have to care about them it's usually a bad sign :-)

# From #jaredcwhite
FYI, procs *can* get passed around to methods that expect an argument like that, and you can save them in arrays, hashes, etc. Just use & if/when you need to pass as a block.
