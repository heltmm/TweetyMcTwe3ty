
#!/usr/bin/env ruby

require 'Twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "iuNtiN6c8OVKQkydra9ZosiQw"
  config.consumer_secret     = "bP4mHQc1lgOoIuCbkJ4lUZnhRKvvkjInBeAdTbi2sIAWdOUXV9"
  config.access_token        = "914292875621416961-1i0UjaHZTRSDzrKdEWXhC7172MvbaUz"
  config.access_token_secret = "XIZloOTdG78K7E5fUjsB3BH00juJQLXpcOsZfuUPm9Th0"
end

# client.update("Having a single tweet does not a Twitter bot make")

# topics = ["coffee", "tea"]
# client.filter(:track => topics.join(",")) do |object|
#   puts object.text if object.is_a?(Twitter::Tweet)
# end

# client.sample do |object|
#   puts object.text if object.is_a?(Twitter::Tweet)
# end

client.search("to:comcast no internet").each do |tweet|
  puts tweet.user.screen_name
  puts tweet.text
end
