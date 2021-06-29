# How does === work? It is used to compare in #Ruby case statements. But there's still so much more to === and case statements...a sample of my findings below


# Recall the case statement from yesterday's tweet:
score = 0

get_letter_grade = case score
when 90..100 then "A"   # This is really saying: (90..100) === 0
when 80..89 then "B"    # It is not 0 === (80..89) 
when 70..79 then "C"
when 60..69 then "D"        
when 0..59 then "F"
when 0 then "Zero"      # Note there is also a '0' in the line above this
else "Invalid score"    # If there is no 'else' and no matches, 'nil' returns
end

puts get_letter_grade   # F, it will only take the first match


# Playing around with === explicitly, but not used in practice
"hello".is_a?(String)   # true, another way of checking instances of a class
String === "hello"      # true, syntactic sugar for === method
String.===("hello")     # true, String includes "hello"
"hello" === String      # false, "hello" does not include String
Numeric === 5           # true, Numeric includes 5
Range === (0..100)      # true, Range includes (0..100)
(0..100) === 500        # false, Range 0 to 100 does not include 500

