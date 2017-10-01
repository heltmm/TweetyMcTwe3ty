
#!/usr/bin/env ruby

require 'Twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "iuNtiN6c8OVKQkydra9ZosiQw"
  config.consumer_secret     = "bP4mHQc1lgOoIuCbkJ4lUZnhRKvvkjInBeAdTbi2sIAWdOUXV9"
  config.access_token        = "914292875621416961-1i0UjaHZTRSDzrKdEWXhC7172MvbaUz"
  config.access_token_secret = "XIZloOTdG78K7E5fUjsB3BH00juJQLXpcOsZfuUPm9Th0"
end

client.update("Having a single tweet does not a Twitter bot make")
