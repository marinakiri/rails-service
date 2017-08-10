require 'dotenv/load'

class SendTweet
	def initialize(tweet)
		@tweet = tweet.to_s
	end

	def log_in_to_twitter
		@client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = ENV["YOUR_CONSUMER_KEY"]
		  config.consumer_secret     = ENV["YOUR_CONSUMER_SECRET"]
		  config.access_token        = ENV["YOUR_ACCESS_TOKEN"]
		  config.access_token_secret = ENV["YOUR_ACCESS_SECRET"]
		end
	end

	def send_tweet
		@client.update(@tweet)
	end

	def perform
		log_in_to_twitter
		send_tweet
	end
end