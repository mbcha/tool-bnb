puts "Cleaning the DB..."
Listing.destroy_all
Booking.destroy_all
User.destroy_all

puts "Generating new seeds..."


u = User.new(name: "Mike", location: "Amsterdam", email: "mikey@mikey.com", password: "testing")


l = Listing.new(category: "Chain Saw", description: "VROOM VROOM!", price: 15)
l.user = u
l.save!

l = Listing.new(category: "Lawn Mower", description: "I dont pass on grass", price: 20)
l.user = u
l.save!

l = Listing.new(category: "Ladder", description: "Dont fall!", price: 12)
l.user = u
l.save!

l = Listing.new(category: "Hammer", description: "Dont fall!", price: 13)
l.user = u
l.save!

l = Listing.new(category: "Jack Hammer", description: "Dont fall!", price: 22)
l.user = u
l.save!

l = Listing.new(category: "Power drill", description: "Over 50 different attachments!", price: 33)
l.user = u
l.save!

l = Listing.new(category: "Hammer", description: "Dont fall!", price: 13)
l.user = u
l.save!

l = Listing.new(category: "Jack Hammer", description: "Dont fall!", price: 22)
l.user = u
l.save!

l = Listing.new(category: "Power drill", description: "Over 50 different attachments!", price: 33)
l.user = u
l.save!

