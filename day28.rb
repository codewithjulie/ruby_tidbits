# Sometimes when a topic gets challenging, I make sure I go back and understand the basics. What is a block?

# A chunk of code that is passed into a method to be executed

# Yesterday we saw this when I used the yield keyword

def some_method
  yield
end

# Curly braces block is functionally the same as the do...end block
some_method { puts "I am a simple block" }
# => I am a simple block

some_method do
  puts "I am a simple block"
end
# => I am a simple block


# Example of how we pass in blocks with arguments
[1, 2, 3].each { |num| puts "#{num}. I am a simple block" }
# 1. I am a simple block 
# 2. I am a simple block 
# 3. I am a simple block

# Now trying to understand Matheus Richard's reply, yield with arguments
def each(array)
  for element in array do
    yield(element)
  end
end

each([1, 2, 3]) { |num| puts "#{num}. I am a simple block" }
# 1. I am a simple block 
# 2. I am a simple block 
# 3. I am a simple block

I THINK I WILL SLEEP ON IT 💤