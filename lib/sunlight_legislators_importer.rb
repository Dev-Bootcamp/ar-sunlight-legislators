<<<<<<< HEAD
require_relative '../app/models/legislator'
=======
>>>>>>> 23cc01c4fbd5d0ee29723ed5961adcb5a85897d3
require 'csv'

class SunlightLegislatorsImporter
  def self.import(filename)
<<<<<<< HEAD
    csv = CSV.new(File.open(filename), :headers => true, :header_converters => :symbol)
    csv.each do |row|
      Legislator.create :title       => row[:title],
                        :firstname   => row[:firstname],
                        :middlename  => row[:middlename],
                        :lastname    => row[:lastname],
                        :name_suffix => row[:name_suffix],
                        :nickname    => row[:nickname],
                        :party       => row[:party],
                        :state       => row[:state],
                        :district    => row[:district],
                        :in_office   => row[:in_office],
                        :gender      => row[:gender],
                        :phone       => row[:phone],
                        :fax         => row[:fax],
                        :website     => row[:website],
                        :webform     => row[:webform],
                        :twitter_id  => row[:twitter_id],
                        :birthdate   => row[:birthdate]
=======
    csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
      row.each do |field, value|
        # TODO: begin
        raise NotImplementedError, "TODO: figure out what to do with this row and do it!"
        # TODO: end
      end
>>>>>>> 23cc01c4fbd5d0ee29723ed5961adcb5a85897d3
    end
  end
end

<<<<<<< HEAD
SunlightLegislatorsImporter.import('db/data/legislators.csv')

=======
>>>>>>> 23cc01c4fbd5d0ee29723ed5961adcb5a85897d3
# IF YOU WANT TO HAVE THIS FILE RUN ON ITS OWN AND NOT BE IN THE RAKEFILE, UNCOMMENT THE BELOW
# AND RUN THIS FILE FROM THE COMMAND LINE WITH THE PROPER ARGUMENT.
# begin
#   raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
#   SunlightLegislatorsImporter.import(ARGV[0])
# rescue ArgumentError => e
#   $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
# rescue NotImplementedError => e
#   $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
# end
