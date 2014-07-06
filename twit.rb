require 'rubygems'
require 'twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "8NxBrDIEuv0FCboRbp6u2iTGQ"
  config.consumer_secret     = "EYDCZDOxKvbq4ZjDucb9WEk98hwuuF06iPBXRRkNPro4QKtdnQ"
  config.access_token        = "217117828-SpzCbsawA672puIiRpIACZWXfPC9XFIhOCGagiwq"
  config.access_token_secret = "YvfgSFJ6j3FS4mgR3jWor5hnsVjaS9tlwWX1nGeG05CBH"
end

#screen_name =  String.new ARGV[0]

timeline = client.user_timeline('Atul_Prince')
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
