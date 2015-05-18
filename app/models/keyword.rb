class Keyword < ActiveRecord::Base
  def grab_twitts

    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "CAPlH0HhrWQSwxkGqSejrrPW1"

      config.consumer_secret     = "IURTLt4E2EfHYtdCW8IE3YVNr3pRswv7565fetLKoOFgOppYth"
      config.access_token        = "1210824392-l1cwyJAn8CqDcBuChGc39FJiSEPBgiwFB2EkSqa"
      config.access_token_secret = "RwU8bjcVfehTNN9v8IeW2583i1WmoHFQcLpm0MMPXmHXF"
    end

    client.search(self.word, count: 3, result_type: "popular").collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end

  end
end
