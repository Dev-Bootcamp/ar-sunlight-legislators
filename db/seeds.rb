require_relative 'config'
require_relative '../app/models/representative'
require_relative '../app/models/senator'
require_relative '../app/main'

require 'csv'

def legislators
  legislator_list = []
  CSV.foreach('db/data/legislators.csv',{:headers => true, :header_converters => :symbol}) { |row|
    legisator_list << Legislator.create
  }
end
