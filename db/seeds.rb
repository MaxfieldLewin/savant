# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Faker::Config.locale = 'en-US'

User.create!(username: "max", email: "max@max.max", password: "maxmax")

artists = ["Lil B", "MF DOOM", "Gucci Mane", "William Shakespeare", "William Shattner", "Will Smith", "Will.I.Am"]


artists.each do |artist|
  artist_model = Artist.create!(name: artist)
  10.times do

    case (1..3).to_a.sample
    when 1
      title = "Welcome to #{Faker::Address.city}, land of #{Faker::Commerce.department(1)}"
    when 2
      title = "#{Faker::Hacker.ingverb.capitalize} the #{Faker::PhoneNumber.area_code}"
    when 3
      title = "So #{Faker::Hacker.adjective.capitalize} they call me #{Faker::App.name}"
    end

    contents = Faker::Lorem.paragraph;

    artist_model.songs.create(title: title, contents: contents)
  end
end
