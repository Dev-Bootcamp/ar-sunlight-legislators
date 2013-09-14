# require_relative '../lib/sunlight_legislators_importer.rb'
require_relative 'models/legislator'

def get_state_legislators
  Legislator.all.each { |legislator| puts "#{legislator.title} #{legislator.firstname} #{legislator.lastname}" if legislator.state == ARGV[0] }
end

# get_state_legislators

def get_by_party
  Legislator.all.each { |legislator| puts "#{legislator.title} #{legislator.firstname} #{legislator.lastname}, #{legislator.state} #{legislator.district}" if legislator.party == ARGV[0] && legislator.title == 'Rep' }  
end

get_by_party
