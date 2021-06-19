str = "hello"
puts str.upcase  # "HELLO"

class String
  def upcase
    self << "!!!"
  end
end

puts str.upcase  # "hello!!!"

# This will override the previous
class String
  def upcase
    "changed upcase method"
  end
end

puts str.upcase  # "changed upcase method"