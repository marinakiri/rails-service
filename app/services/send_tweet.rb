class SendTweet
	require 'twitter'
	require 'dotenv/load'
	
	def initialize
	end

	def log_in_to_twitter
		
	end

	def send_tweet
		
	end
end



require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["YOUR_CONSUMER_KEY"]
  config.consumer_secret     = ENV["YOUR_CONSUMER_SECRET"]
  config.access_token        = ENV["YOUR_ACCESS_TOKEN"]
  config.access_token_secret = ENV["YOUR_ACCESS_SECRET"]
end

client.update('Bonjour monde ! comment va ?')