# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# actor = Actor.create(first_name: "Jessie", last_name: "williams", known_for: "Grey's Anatomy")

# movie = Movie.new(title: "Ratatouille", year: 2007, plot: "Remy dreams of becoming a great chef, despite being a rat in a definitely rodent-phobic profession. He moves to Paris to follow his dream, and with the help of hapless garbage boy Linguini he puts his culinary skills to the test in the kitchen but he has to stay in hiding at the same time, with hilarious consequences. Remy eventually gets the chance to prove his culinary abilities to a great food critic but is the food good? A Pixar animation.")
# movie.save

# Genre.create!([
#   {name: "thriller"},
#   {name: "romcom"},
#   {name: "action"},
#   {name: "science fiction"}
# ])

MovieGenre.create!([
  {movie_id: 1},
  {genre_id: 1}
])
