# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Yacht.destroy_all
User.destroy_all

my_user = User.new(email: "test@gmail.com", password: "123456")

my_user.save!


my_yacht = Yacht.new(name: "Capri",
                        length: 58.6,
                        capacity: 12,
                        description: "Capri is a  motor yacht built by the German shipyard Lurssen is available for charter for up to 12 guests in 6 cabins. This yacht features interior styling by Glade Johnson Design.",
                        crew: 15,
                        price_per_day: 50_000,
                        location: "Capri",
                        cabin: 6,
                        speed: 13)

my_yacht.user = my_user
file = URI.open("https://image.yachtcharterfleet.com/w1277/h618/qh/cs0-138-1001-482/m2/k63d4a4b4/vessel/resource/58490/charter-capri-i-yacht.jpg")
my_yacht.photos.attach(io: file, filename: "capri.png", content_type: "image/jpg")
my_yacht.save!

my_yacht1 = Yacht.create!(name: "Adastra",

  length: 42.5,
  capacity: 6,
  description: "Built by McConaghy Boats in Zhuhai, China, the custom design went through structural analysis, while a computer model of Adastra was tested for wave impact, slamming and the potential durability of the outriggers running through big seas. Constructed from e-glass and Kevlar, these hulls are mated to a carbon-fiber superstructure, so the boat weighs only 49 tons, or the equivalent weight of a 60-foot conventional yacht. Since weight reduction was critical to the trimaran’s performance, McConaghy custom-designed all the components—hatches, port lights, ladders and hinges—to be made of carbon fiber. This lightweight design delivers hydrodynamic efficiency, stability and performance, as well as low fuel consumption and low environmental impact.",
  crew: 5,
  price_per_day: 30_000,
  location: "Monaco",
  cabin: 3,
  speed: 17,
  user: my_user)

# my_yacht1.user = my_user
file2 = URI.open("https://robbreport.com/wp-content/uploads/2021/08/Real-Lead-ADASTRA_00000191_vb1545811.jpg")
file3 = URI.open("https://image.yachtcharterfleet.com/w1277/h618/qh/ca/m2/k27bcc250/vessel/resource/536135/charter-adastra-yacht.jpg")
my_yacht1.photos.attach(io: file2, filename: "adastra.png", content_type: "image/png")
my_yacht1.photos.attach(io: file3, filename: "adastra-inside.png", content_type: "image/png")
# my_yacht1.save!

# my_yacht2 = Yacht.create(name: "Capra",

#   length: 29,
#   capacity: 20,
#   description: "",
#   crew: 10,
#   price_per_day: 50_000,
#   location: "Monaco",
#   cabin: 10,
#   speed: 20)

# my_yacht2.user = my_user
# my_yacht2.save!
