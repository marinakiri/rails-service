class HomeController < ApplicationController
	def index
  	    tweet = params[:tweet_text]
		unless tweet == nil
    	    SendTweet.new(tweet).perform
    	   	flash[:success] = "Tweet sent out to the world :)"
    	    redirect_to root_path
    	end
	end
end


