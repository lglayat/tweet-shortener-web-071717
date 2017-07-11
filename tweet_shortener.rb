# Write your code here.
def dictionary
  dict = {"hello" => "hi", "to" => "2", "two" => "2",
     "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u",
     "at" => "@", "and" => "&"}

  dict
end

def word_substituter(tweet)
  dict = dictionary()
  revisedTweet = []
  tweetArr = tweet.split()

  tweetArr.each do |word|
     revisedTweet << (dict[word.downcase] ? dict[word.downcase] : word)
  end

  newTweet = revisedTweet.join(" ")
  newTweet
end




def bulk_tweet_shortener(arr)
  arr.each do |element|
    puts word_substituter(element)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
     return tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    return tweet
  else
    newTweet = tweet[0..136]
    newTweet += ("...")
    return newTweet
  end



end
