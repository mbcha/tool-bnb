puts "Cleaning the DB..."
Listing.destroy_all
Booking.destroy_all
User.destroy_all

puts "Generating new seeds..."


u = User.new(name: "Mike", location: "Amsterdam", email: "mikey@mikey.com", password: "testing")


l = Listing.new(
  category: "Chain Saw",
  description: "This is the best chain saw ever. It will cut down all sorts of shrubbery and demolish those nasty roots.",
  price: 15)
l.user = u
l.save!

l = Listing.new(
  category: "Lawn Mower",
  description: "Get your yard work done nice and easy. I dont pass on grass, instead I eat grass for breakfast, lunch, and dinner.",
  price: 20)
l.user = u
l.save!

l = Listing.new(
  category: "Ladder",
  description: "Need to get on your roof? No problem. Need to go into a tree, rent me!",
  price: 12)
l.user = u
l.save!

l = Listing.new(
  category: "Hammer",
  description: "Do you have something you need to nail? This hammer is HUGE!",
  price: 13)
l.user = u
l.save!

l = Listing.new(
  category: "Jack Hammer",
  description: "Need to demolish your neighbors drive way? Rent me!",
  price: 22)
l.user = u
l.save!

l = Listing.new(
  category: "Power drill",
  description: "Over 50 different attachments! This drill is wireless and full of power",
  price: 33)
l.user = u
l.save!

l = Listing.new(
  category: "Hammer",
  description: "Little hammer for little nails",
  price: 13)
l.user = u
l.save!

l = Listing.new(
  category: "Industial Floor Waxer",
  description: "Need to polish your office floors? Rent me!",
  price: 22)
l.user = u
l.save!

l = Listing.new(
  category: "Power Blaster",
  description: "Over 50 different attachments!",
  price: 33)
l.user = u
l.save!

