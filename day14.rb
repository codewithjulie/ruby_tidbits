What will the following return?

irb(main):001:0> x
=> undefined local variable or method 'x'
irb(main):001:0> x ||= 5
=> 5

irb(main):001:0> y = y  # Why does this return nil?
=> nil
irb(main):001:0> y
=> nil

irb(main):001:0> z || z = 10
=> undefined local variable or method 'z'
irb(main):001:0> z = z || 10
=> 10

z ||= 10   is equivalent to     z || z = 10 yet 
z ||= 10   does not error and   z || z = 10 does  # Why??
