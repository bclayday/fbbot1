class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

		require "facebook/messenger"
		include Facebook::Messenger
		Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])
		Bot.on :message do |message|
		  puts "got your message!"
		end
end
