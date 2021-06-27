# Did you know they are an expression? That means you can save it to a variable

def get_letter_grade_case(score)
  case score
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  when 0..59 then "F"
  else "Invalid score"
  end
end

puts get_letter_grade_case(60)      # D
puts get_letter_grade_case("Hat")   # Invalid score


# Equivalent...at least in outcome
def get_letter_grade_if_else(score)
  if (90..100).include?(score)
    "A"
  elsif (80..89).include?(score)
    "B"
  elsif (70..79).include?(score)
    "C"
  elsif (60..69).include?(score)
    "D"
  elsif (0..59).include?(score)
    "F"
  else
    "Invalid score"
  end
end

puts get_letter_grade_if_else(60)
puts get_letter_grade_if_else("Hat")


# Saving to a variable
score = 60

letter_grade = case score
when 90..100 then "A"
when 80..89 then "B"
when 70..79 then "C"
when 60..69 then "D"
when 0..59 then "F"
else "Invalid score"
end

puts letter_grade