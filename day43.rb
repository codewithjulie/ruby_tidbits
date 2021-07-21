[1] pry(main)> load 'lib/mastermind.rb'
=> true

[2] pry(main)> game = Mastermind.new
=> #<Mastermind:0x00007fa380ac46c8
 @code=#<Code:0x00007fa380ac4448 @code=["B", "G", "Y", "G"]>,
 @player=#<Player:0x00007fa380ac4628 @name="Player">>

[3] pry(main)> pry game

[1] pry(<Mastermind>) @code
=> #<Code:0x00007fa380ac4448 @code=["B", "G", "Y", "G"]>
[2] pry(#<Mastermind>)> @player
=> #<Player:0x00007fa380ac4628 @name="Player">
[3] pry(#<Mastermind>)> get_player_guess
Enter your guess: bbbb
=> #<Code:0x00007fa384159f30 @code=["B", "B", "B", "B"]>
[4] pry(#<Mastermind>)> 
