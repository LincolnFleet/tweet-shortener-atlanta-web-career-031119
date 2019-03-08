# Write your code here.
require 'pry'

def dictionary
  {
    "hello"=>"hi",
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"
  }
end

def word_substituter(tweet)
  tweet_pieces=tweet.split
  tweet_pieces.map do |chirp|
    dictionary.map do |long, short|
      if chirp.upcase==long.upcase
        chirp.replace short
      end
    end
  end
  tweet=tweet_pieces.join(" ")
  return tweet
end

def bulk_tweet_shortener(tweets)
  i=0
  tweets.map do |twit|
    word_substituter(twit)
end
