# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
my_yacht = Yacht.new(name: "Capri",
                     length: 29,
                     capacity: 20,
                     description: "Its a good yacht",
                     crew: 10,
                     price_per_day: 50_000,
                     location: "monaco",
                     cabin: 10,
                     speed: 20)
my_yacht.save!
