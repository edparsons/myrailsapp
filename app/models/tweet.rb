class Tweet < ActiveRecord::Base
  attr_accessible :from_user, :from_user_id_str, :profile_image_url, :text, :twitter_created_at

    #A method to grab latest tweets from Twitter
  def self.get_tweets_for_user(user = "eddparsons")
    $counter = 0
    Twitter.user_timeline(user).each do |tweet_result|
      #making sure we are not saving exact same tweet from a person again
      unless Tweet.exists?(['twitter_created_at = ? AND from_user = ?', tweet_result.created_at, tweet_result.user.screen_name])
        #finally creating the tweet record
        Tweet.create!({
            :from_user => tweet_result.user.screen_name,
            :from_user_id_str => tweet_result.user.name,
            :profile_image_url => tweet_result.user.profile_image_url,
            :text => tweet_result.text,
            :twitter_created_at => tweet_result.created_at
        })
      end
      $counter += 1
      if $counter > 25
        break
      end
    end
  end
end
