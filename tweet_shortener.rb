# Write your code here.
require 'pry'

def dictionary (word)
my_dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }


  my_dictionary.keys.collect do |x|
    if word == x
      word = my_dictionary[x]
    end
  end
  return word
end


def word_substituter (string)
newstring = []
    new_string = string.split
    new_string.collect do |word|
      word = dictionary(word)
      newstring << word
    end
  newstring.join(" ")
end



#Somehow this is printing the beggining of the first tweet in the array and the end of the final tweet

def bulk_tweet_shortener(tweets)
#binding.pry
i = 0

  tweets.collect do |x|
    #binding.pry
      abc = word_substituter(x)
      #binding.pry
      puts abc
      i = i+1
  #  end
    end
  #newarrays
end

#if x = "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
#  puts "I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys. 4 real."
#bulk_tweet_shortener(["Hey there","what's going on with this"])
#expected: ("Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!")
#     got: (["Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I ... weird, because I'm a writer & this is just writing & I tweet all day. For real, u guys. For real."])


def selective_tweet_shortener(tweet)
  if tweet.length>140
    new_tweet = word_substituter(tweet)
    return new_tweet
  elsif tweet.length<141
       return tweet
  end
end
#selective_tweet_shortener("ABCD")

def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length>139
      blahblah = tweet.slice(0,140)
      blahblah
  elsif word_substituter(tweet).length<140
    tweet
  end
end
