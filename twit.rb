require 'rubygems'
require 'twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

#screen_name =  String.new ARGV[0]

timeline = client.user_timeline('')
i=0
timeline.each do |t|
       i+=1 
    puts "#{t.text}"
    if i > 5 then
    	break
    end
end
client.update('I am tweeting with a gem.')
puts  	client[1]
