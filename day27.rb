# Today I learned how to use yield

# Inside a method, yield will be replaced by a block that's passed in
def do_what_i_say
  yield 
end

do_what_i_say                     # LocalJumpError: no block given (yield)
do_what_i_say { puts "say hi" }   # => say hi


# Add block_given? to avoid LocalJumpError
def optional_block
  if block_given?
    yield
  else
    puts "No block given"
  end
end

optional_block                    # => No block given
optional_block { puts "Hello" }   # => Hello


# After yield, the method continues to run
def yield_times_two
  yield
  puts "In the method"
  yield
  puts "In the method again"
end

yield_times_two { puts "The block" }
  # The block
  # In the program
  # The block
  # In the program again

  



