# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.create(
  name: "Battlefield 1",
  description: "Similar to previous entries in the series, Battlefield 1 is a first-person shooter that emphasizes teamwork. The game is set in the period of World War I, and is inspired by historic events.",
  contact_info: "Email: tom-jerry@example.com",
  image: "https://upload.wikimedia.org/wikipedia/en/f/fc/Battlefield_1_cover_art.jpg",
)

Listing.create(
  name: "Forza Motorsport 6",
  description: "The sixth Forza Motorsport and eighth overall installment in the Forza series, and was released worldwide on September 15, 2015.",
  contact_info: "Text me at 225-123-4567",
  image: "https://upload.wikimedia.org/wikipedia/en/4/44/Forza_Motorsport_6_Cover.jpg",
)

Listing.create(
  name: "Final Fantasy XV",
  description: "Takes place on the fictional world of Eos. All the world's countries, bar the kingdom of Lucis, are under the dominion of the empire of Niflheim. Noctis Lucis Caelum, heir to the Lucian throne, goes on a quest to retake his homeland and its magical Crystal after it is seized by Niflheim on the eve of peace negotiations between the two nations.",
  contact_info: "Send me a Steam message: @gr8-g8m3r",
  image: "https://upload.wikimedia.org/wikipedia/en/5/5a/FF_XV_cover_art.jpg",
)
