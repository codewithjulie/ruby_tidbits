Question: What will a and b return?

a = true and false
b = true && false


Answer:

a = true and false
=> false
b = true && false
=> false

a
=> true
b
=> false

# 'and' has a lower precedence than '=' so it is really doing:
(a = true) and false  
=> false
b = (true && false)
=> false

# a assigned to true; 'true and false' returns false