# require_relative '../lib/sunlight_legislators_importer.rb'
require_relative 'models/legislator'
require 'twitter'

def get_state_legislators
  Legislator.all.each { |legislator| puts "#{legislator.title} #{legislator.firstname} #{legislator.lastname}" if legislator.state == ARGV[0] }
end

# get_state_legislators

def get_by_party
  Legislator.all.each { |legislator| puts "#{legislator.title} #{legislator.firstname} #{legislator.lastname}, #{legislator.state} #{legislator.district}" if legislator.party == ARGV[0] && legislator.title == 'Rep' }  
end

# get_by_party

def get_tweets
  client = Twitter::REST::Client.new
  client.consumer_key        = "XjBmpRscgcuD5qfSvmbyA"
  client.consumer_secret     = "o9K0dbTqjL6Ip8h1noIxgzu3XO8xMmSdPztvygpFuU"
  client.access_token        = "18487705-XdC2L784vlpzgnOnunG26E9CtMKbsQ9eMgQVjgF3M"
  client.access_token_secret = "KTacs0uelLo53kW6fcBFJbpUThWn7hnX6XJ1zx8Io0"
  
  tweets = []
  tweets << Tweet.new.user(legislator.find(1))
end

get_tweets