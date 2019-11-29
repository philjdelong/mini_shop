# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

phil = Merchant.create(
  name: "Phil DeLong",
  address: "3102 N. Race St.",
  city: "Denver",
  state: "CO",
  zip: 80205
  )
courtney = Merchant.create(
  name: "Courtney Newby",
  address: "1501 Wazee St., Apt. 3F",
  city: "Denver",
  state: "CO",
  zip: 80202
)
