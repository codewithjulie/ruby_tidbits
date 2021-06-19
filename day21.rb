# String method quiz!
# What would each of the following return?
# Note - respond as if the methods were called in order

str = "hello"           # "hello"

str.chars               # ["h", "e", "l", "l", "o"]
str.delete("l")         # "heo"
str.delete("l", "lo")   # "heo" - deletes in intersection of arguments
str.intern              # :hello - wonders when one would use this over .to_sym
str << "!"              # "hello!"
str.replace("Hello!")   # "Hello!"
str.sub("l", "e")       # "Heelo!" - replaces only the first occurance
str.gsub!("l", "p")     # "Heppo!" - replaces all occurence
str.splice(2..-1)       # undefined method
str.slice(2..-1)        # "ppo!"
str.slice!(2..-1)       # "ppo!" - str is now 'He'
str.clear               # ""
str.include?("h")       # false

str                     # ""

# Most of the methods above do not alter 'str' with the exception of
# #<<, #replace, #clear, and any methods that end with '!'