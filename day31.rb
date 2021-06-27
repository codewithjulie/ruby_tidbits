# Today is a day for review, and that's okay it is a marathon, not a sprint

# Today I revisit #Ruby monkey patching, created my own map method, and combined it with 'yield'...slowly getting there!

class Array

  def my_map
    new_array = []
    current_index = 0
    while current_index < self.length
      new_array << yield(self[current_index])
      current_index += 1
    end
    new_array
  end

end

animals = ["cat", "dog", "frog"]    # => ["cat", "dog", "frog"]
animals.my_map(&:upcase)            # => ["CAT", "DOG", "FROG"]
animals                             # => ["cat", "dog", "frog"]


