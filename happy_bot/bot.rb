module HappyBot
  class Bot < SlackRubyBot::Bot
    help do
      title 'Happy Bot'
      desc 'This bot wish you a Happy birthday to you or Happy work anniversary .'

      command :wish_birthday do
        title 'birthday'
        desc 'Wish happy birthday'
      end

       command :wish_anniversary do
        title 'work_anniversary'
        desc 'Wish happy anniversary'
        
      end

        command :wish_anniversary do
        title 'Date: Oct 45 2015'
        desc 'Type in date in same format '
        
      end
    end
  end



class CallBot < SlackRubyBot::Bot
   
   match /Date: (Jan(?:uary)?|Feb(?:ruary)?|Mar(?:ch)?|Apr(?:il)?|May|Jun(?:e)?|Jul(?:y)?|Aug(?:ust)?|Sep(?:tember)?|Oct(?:ober)?|Nov(?:ember)?|Dec(?:ember)?)\s+(\d{1,2})\s+(\d{4})/  do |client, data, match|
    client.say(channel: data.channel, text: "Type work_anniversary or birthday")
  end
end

end