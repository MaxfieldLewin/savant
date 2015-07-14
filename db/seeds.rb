# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(username: "max", email: "max@max.max", password: "maxmax")

artists = ["Lil B", "MF DOOM", "Gucci Mane", "William Shakespeare", "William Shattner", "Will Smith", "Will.I.Am"]

artists.each do |artist|
  artist_model = Artist.create!(name: artist)
  10.times do
    title1 = "Welcome to #{Faker::Address.city}"
    title2 = "#{Faker::Hacker.ingverb} the #{Faker::PhoneNumber.area_code}"
    title3 = "So #{Faker::Hacker.adjective} they call me #{Faker::App.name}"
    artist_model.songs.build(title: [title1, title2, title3].sample)
  end
end
