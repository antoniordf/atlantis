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


my_yacht = Yacht.create!(name: "Capri",
                        length: 58.6,
                        capacity: 12,
                        description: "Capri is a  motor yacht built by the German shipyard Lurssen is available for charter for up to 12 guests in 6 cabins. This yacht features interior styling by Glade Johnson Design.",
                        crew: 15,
                        price_per_day: 50_000,
                        location: "Capri",
                        cabin: 6,
                        speed: 13,
                        user: my_user)

file1 = URI.open("https://image.yachtcharterfleet.com/w1277/h618/qh/cs0-138-1001-482/m2/k63d4a4b4/vessel/resource/58490/charter-capri-i-yacht.jpg")
file2 = URI.open("https://www.luxurychartergroup.com/cms/uploads/charter-yacht-capri1-sundeck.jpg")
file3 = URI.open("https://www.luxurychartergroup.com/cms/uploads/charter-yacht-capri1-upper-aft-deck-dining.jpg")
file4 = URI.open("https://www.luxurychartergroup.com/cms/uploads/charter-yacht-capri1-master-cabin-jacuzzi.jpg")
my_yacht.photos.attach(io: file1, filename: "capri.png", content_type: "image/jpg")
my_yacht.photos.attach(io: file2, filename: "capri1.png", content_type: "image/jpg")
my_yacht.photos.attach(io: file3, filename: "capri2.png", content_type: "image/jpg")
my_yacht.photos.attach(io: file4, filename: "capri3.png", content_type: "image/jpg")

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


file1 = URI.open("https://robbreport.com/wp-content/uploads/2021/08/Real-Lead-ADASTRA_00000191_vb1545811.jpg")
file2 = URI.open("https://image.yachtcharterfleet.com/w1277/h618/qh/ca/m2/k27bcc250/vessel/resource/536135/charter-adastra-yacht.jpg")
file3 = URI.open("https://mcconaghyboats.com/wp-content/uploads/2022/01/Adastra-42.5m-10-scaled.jpg")
file4 = URI.open("https://mcconaghyboats.com/wp-content/uploads/2022/01/Adastra-42.5m-3-scaled.jpg")
my_yacht1.photos.attach(io: file1, filename: "adastra.png", content_type: "image/png")
my_yacht1.photos.attach(io: file2, filename: "adastra-inside.png", content_type: "image/png")
my_yacht1.photos.attach(io: file3, filename: "adastra-inside1.png", content_type: "image/png")
my_yacht1.photos.attach(io: file4, filename: "adastra-inside2.png", content_type: "image/png")


my_yacht2 = Yacht.create!(name: "Artefact",

  length: 80,
  capacity: 20,
  description: "Meet Artefact, a yacht ahead of its time. The exterior’s whimsical curves made this superyacht the toast of last week’s Monaco Yacht Show, but its universal appeal didn’t happen by coincidence. The world’s largest 262-foot boat (by volume) was meticulously planned for years by her owner, an engineer, and build captain to be a cutting-edge, diesel-electric wunderkind. The futuristic façade and eco credentials have grabbed the headlines, but Artefact’s interior is what may eventually reset the course for future yacht design.",
  crew: 30,
  price_per_day: 100_000,
  location: "St Barths",
  cabin: 10,
  speed: 17.8,
  user: my_user)


file1 = URI.open("https://robbreport.com/wp-content/uploads/2021/10/Real-Lead-Artefact_hero_fleet.jpg")
file2 = URI.open("https://robbreport.com/wp-content/uploads/2021/10/2.-Artefact-5178crop.jpg")
file3 = URI.open("https://robbreport.com/wp-content/uploads/2021/10/2.-NOBISKRUG_ARTEFACT_Main-SalonfranciscoMartinez_1851.jpg")
file4 = URI.open("https://robbreport.com/wp-content/uploads/2021/10/Extra-aa-5309b.jpg")
my_yacht2.photos.attach(io: file1, filename: "artefact.png", content_type: "image/png")
my_yacht2.photos.attach(io: file2, filename: "artefact-inside.png", content_type: "image/png")
my_yacht2.photos.attach(io: file3, filename: "artefact-inside1.png", content_type: "image/png")
my_yacht2.photos.attach(io: file4, filename: "artefact-inside2.png", content_type: "image/png")



my_yacht3 = Yacht.create!(name: "O'PARI",

  length: 95,
  capacity: 12,
  description: "A truly unique luxury superyacht abounding in impressive and innovative features, 311ft (95m) O’PARI is a brand new vessel from Golden Yachts, and is available for charter for up to 12 guests in the Mediterranean, from Corsica, Croatia and the French Riviera to the Greek Islands, Sardinia and Turkey.",
  crew: 29,
  price_per_day: 120_000,
  location: "Nassau",
  cabin: 14,
  speed: 16,
  user: my_user)


file1 = URI.open("https://www.luxurychartergroup.com/cms/uploads/thumb2/luxury-charter-yacht-opari-at-anchor3.jpg")
file2 = URI.open("https://www.luxurychartergroup.com/cms/uploads/thumb2/luxury-charter-yacht-opari-aerial-view.jpg")
file3 = URI.open("https://www.luxurychartergroup.com/cms/uploads/thumb2/luxury-charter-yacht-opari-sundeck.jpg")
file4 = URI.open("https://www.luxurychartergroup.com/cms/uploads/thumb2/luxury-charter-yacht-opari-upper-salon2.jpg")
my_yacht3.photos.attach(io: file1, filename: "pari.png", content_type: "image/png")
my_yacht3.photos.attach(io: file2, filename: "pari-inside.png", content_type: "image/png")
my_yacht3.photos.attach(io: file3, filename: "pari-inside1.png", content_type: "image/png")
my_yacht3.photos.attach(io: file4, filename: "pari-inside2.png", content_type: "image/png")


my_yacht4 = Yacht.create!(name: "AQUILA",

  length: 86,
  capacity: 12,
  description: "This award-winning  private crewed charter yacht, with exterior design by Tim Heywood, was praised for her technical innovation and design when she launched in 2010 as the largest US-built motor yacht for a century. In 2016, AQUILA underwent a major refit to incorporate state of the art facilities and the latest in navigational and recreational gear.",
  crew: 28,
  price_per_day: 110_000,
  location: "Barbados",
  cabin: 8,
  speed: 15,
  user: my_user)


file1 = URI.open("https://www.luxurychartergroup.com/cms/uploads/luxury-charter-yacht-aquila-profile_001.jpg")
file2 = URI.open("https://www.luxurychartergroup.com/cms/uploads/luxury-charter-yacht-aquila-jet-skis.jpg")
file3 = URI.open("https://www.luxurychartergroup.com/cms/uploads/luxury-charter-yacht-aquila-main-deck-cinema.jpg")
file4 = URI.open("https://www.luxurychartergroup.com/cms/uploads/luxury-charter-yacht-aquila-sun-deck-jacuzzi.jpg")
my_yacht4.photos.attach(io: file1, filename: "aquila.png", content_type: "image/png")
my_yacht4.photos.attach(io: file2, filename: "aquila1.png", content_type: "image/png")
my_yacht4.photos.attach(io: file3, filename: "aquila2.png", content_type: "image/png")
my_yacht4.photos.attach(io: file4, filename: "aquila3.png", content_type: "image/png")
