# Day 40 of #100DaysOfCode 

# Last week when learning about blocks/yield I tried to see what would happen if I did not pass a block into a method:

# ["cat", "dog", "frog"].each   # => #<Enumerator: ...>

# So, I played around some more:

animals = ["cat", "dog", "frog"]
animals.each            # => #<Enumerator: ...>
animals.each.class      # => Enumerator

animals.each.each { |animal| puts animal }
# cat
# dog
# frog
# => ["cat", "dog", "frog"]

animals.each.each.each.each { |animal| puts animal }     # lol
# cat
# dog
# frog
# => ["cat", "dog", "frog"]

enumerator = animals.each
enumerator.peek     # => "cat"
enumerator.next     # => "cat"  returns "cat" but really at "dog"
enumerator.peek     # => "dog"
enumerator.next     # => "dog"
enumerator.peek     # => "frog"
enumerator.next     # => "frog"
enumerator.peek     # => StopIteration: iteration reached an end




