require 'pry'
# Write your code here.
def dictionary 
  the_dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end
def word_substituter (tweet)
  tweet_arr = tweet.split(" ")
  keys = dictionary.keys
  values = dictionary.values
  the_dictionary = dictionary  
  tweet_arr.collect do |w|
    keys.each do |long_w|
      if w.downcase == long_w
        w.replace(the_dictionary[long_w])
      end
    end
  end
  tweet_arr.join(" ")
end

def bulk_tweet_shortener (tweets)
 tweets.each do |tweet|
  puts word_substituter(tweet)
 end
end

def selective_tweet_shortener (tweet_one)
  if tweet_one.length > 140
    return word_substituter(tweet_one)
  else
    return tweet_one
  end
end
def shortened_tweet_truncator (tweet_three)
  pre_truncated = selective_tweet_shortener(tweet_three).length
  if  pre_truncated > 140
    return tweet_three[0..136] + "..."
  else
    return tweet_three
  end 
end