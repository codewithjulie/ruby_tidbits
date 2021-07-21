class Person
  def initialize(name) 
    @name = name 
  end

  def +(ending)     # Beware, it won't work if order is reversed (line 25)
    # Can use -, *, /, %, ^, |, &, <<, >>, !=, <, >, <=>, ==, ===, ||=, **, etc
    @name + ending
  end

  # def ||
  #   # If you tried to use || and &&, the code will error
  # end

  def !
    "Not #{@name}"
  end

  def and(ending)
    @name + ending
  end
end

Person.new("Bob") + "by"      # Bobby
"by" + Person.new("Bob")      # no implicit conversion of Person into String
!Person.new("Bob")            # Not Bob

# Does not work for and, or, and not unless you call it with . notation
Person.new("Bob") and "by"    # syntax error, unexpected 'end'...
Person.new("Bob").and("by")   # Bobby



