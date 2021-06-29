class Tweet
  include Enumerable                      # Must include module to use it

  def initialize(author, tweet)
    @author = author
    @tweet = tweet
    @words = @tweet.split                 # Is this better as a method below?
  end

  def each
    @words.each { |word| yield(word) }    # Must have each method in the class
  end
end

julie_tweet = Tweet.new('Julie', 'Today I learned about Enumerable')

puts julie_tweet.include?("learned")      # => true
puts julie_tweet.include?("carrots")      # => false
puts julie_tweet.include?("Julie")        # => false


