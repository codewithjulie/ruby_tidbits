# Thank you @anniezheng for the walkthrough on bitwise operator. I however need a couple more days to let this sink in. Meanwhile - this means I need to go back to the basics. Thank you @peterc for the 2015 video on Binary and Bitwise Operations in Ruby. Does anyone use this in Ruby/Rails?



# Working between decimal and binary
42.to_s(2)          # => '101010' the 2 is the base
0b101010            # => 42
"101010".to_i(2)    # => 42
42[0]               # => '1'
42[1]               # => '0'
42.bit_length       # => 5
42[100000000000000] # => 0, lol


# AND(&) and OR(|)
2 & 4               # => 0
0b010 & 0b100       # => 0b000, use the AND chart below to compare each bit
2 | 4               # => 6
0b010 | 0b100       # => 0b110, use the OR chart below to compare each bit
2 ^ 4               # => 6
0b010 ^ 0b100       # => 0b110, use the XOR chart below to compare each bit

   AND            OR             XOR
0 & 0 = 0      0 | 0 = 0      0 ^ 0 = 0
0 & 1 = 0      0 | 1 = 1      0 ^ 1 = 1
1 & 0 = 1      1 | 0 = 0      1 ^ 0 = 1
1 & 1 = 1      1 | 1 = 1      1 ^ 1 = 0


# Ever thought about what happens when you use << on a number?
42 << 1             # => 84
101010 << 1         # => 1010100, shifts each bit to the left by 1
0b1010100           # => 84
42 << 2             # => 168
101010 << 2         # => 10101000, shifts each bit to the left by 2