class Twitter
include HTTParty

#Global Settings
basic_auth TWITTER_USER, TWITTER_PASS

def self.latest_posts
  feed = get('http://www.twitter.com/statuses/user_timeline/paulcarlile.json')
end

end