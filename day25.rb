You can use ActiveRecord without Rails! 

Step 1: 'gem install activerecord'

Step 2: require 'activerecord'

Step 3: ActiveRecord::Base.establish_connection('config details')

Step 4: use learnings from #AllAboardBootcamp

require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'codewithjulie',
  database: 'blackjack'
)

class CreatePlayTable < ActiveRecord::Migration
  def change
    create_table :plays do |table|
      table.integer :player_id
      table.integer :round_id
      table.integer :bet
      table.integer :hand_value
      table.boolean :blackjack?
      table.timestamps
    end
  end
end

class Play < ActiveRecord::Base
  belongs_to :player
  belongs_to :round
end