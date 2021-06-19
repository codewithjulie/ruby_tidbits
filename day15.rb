# Ruby adds a variable to the local scope even though it never ran and assigns it to nil...though probably unrelated to yesterday's 'x = x'

irb(main):001:0> value = 5 if false
=> nil
irb(main):001:0> value
=> nil
irb(main):001:0> defined? value
=> "local-variable"

# Ruby adds a variable to the local scope even though it never ran and assigns it to nil