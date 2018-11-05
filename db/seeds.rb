puts "Cleaning the DB..."
Listing.destroy_all

puts "Generating new seeds..."


u = User.find(1)

15.times do
  l = Listing.new(category: "Power Tools", description: "High Power!", price: 50.30)
  l.user = u
  l.save!
end

