module HappyBot
  module Commands
    class WishWell < SlackRubyBot::Commands::Base
    
      command 'birthday' do |client, data, _match|
        client.say(channel: data.channel, text: "Happy birthday to you")
      end

       command 'work_anniversary' do |client, data, _match|
        client.say(channel: data.channel, text: "Happy work anniversary")       
      end
    end
  end
end

