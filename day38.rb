class Tweet
  include Enumerable                      # Must include module to use it

  def initialize(author, tweet)
    @author = author
    @tweet = tweet
    @words = @tweet.split                 
  end

  def each
    @words.each { |word| yield(word) }    # Must have each method in the class
  end
end

new_tweet = Tweet.new("Julie", "Today I continue to learn about Enumerable")

new_tweet.count                                   # => 7
new_tweet.any? { |word| word == "Enumerable" }    # => true
new_tweet.any? { |word| word == "hushpuppies" }   # => false
new_tweet.map(&:upcase).join(" ")  # TODAY I CONTINUE TO LEARN ABOUT ENUMERABLE
new_tweet.sort_by { |word| word.length }
# => ["I", "to", "Today", "learn", "about", "continue", "Enumerable"]


