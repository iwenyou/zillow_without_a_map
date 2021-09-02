# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

#read the csv from lib/seeds/
csv_content = File.read(Rails.root.join('lib', 'seeds', 'redfin_listing_090221.csv'))

#parse the csv file without headers
csv = CSV.parse(csv_content, :headers => true)

#populate the data to the Property db
counter = 0

csv.each do |property|

  p = Property.new
  p.sale_type = property['SALE TYPE']
  p.sold_date = property['SOLD DATE']
  p.property_type = property['PROPERTY TYPE']
  p.address = property['ADDRESS']
  p.city = property['CITY']
  p.state = property['STATE OR PROVINCE']
  p.zip = property['ZIP OR POSTAL CODE']
  p.price = property['PRICE']
  p.beds = property['BEDS']
  p.location = property['LOCATION']
  p.sqft = property['SQUARE FEET']
  p.lot_size = property['LOT SIZE']
  p.year_built = property['YEAR BUILT']
  p.days_on_market = property['DAYS ON MARKET']
  p.price_per_sqft = property['$/SQUARE FEET']
  p.hoa = property['HOA/MONTH']
  p.source = property['SOURCE']
  p.mls = property['MLS#']
  p.favorite = property['FAVORITE'] == 'Y' ? true : false
  p.interested = property['INTERESTED'] == 'Y' ? true : false
  p.latitude = property['LATITUDE']
  p.longitude = property['LONGITUDE']
  p.open_house_start_time = property['NEXT OPEN HOUSE START TIME']
  p.open_house_end_time = property['NEXT OPEN HOUSE END TIME']
  p.save

  counter += 1
  puts "Home address: #{p.address}, #{p.city} has been saved"
end

puts "#{counter}properties has been saved"
