# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Faker::Config.locale = 'en-US'

max = User.create!(username: "max", email: "max@max.max", password: "maxmax")

artists = ["Lil B", "MF DOOM", "Gucci Mane", "William Shakespeare", "William Shattner", "Will Smith", "Will.I.Am"]

rap = Genre.create!(genre_name: "Rap")
pop = Genre.create!(genre_name: "Pop")
rock = Genre.create!(genre_name: "Rock")
rab = Genre.create!(genre_name: "R&B")
news = Genre.create!(genre_name: "News")
tech = Genre.create!(genre_name: "Tech")
law = Genre.create!(genre_name: "Law")

artists.each do |artist|
  artist_model = Artist.create!(name: artist)
  5.times do

    case (1..3).to_a.sample
    when 1
      title = "Welcome to #{Faker::Address.city}, land of #{Faker::Commerce.department(1)}"
    when 2
      title = "#{Faker::Hacker.ingverb.capitalize} the #{Faker::PhoneNumber.area_code}"
    when 3
      title = "So #{Faker::Hacker.adjective.capitalize} they call me #{Faker::App.name}"
    end

    contents = Faker::Lorem.paragraphs(4).join;

    artist_model.songs.create(title: title, contents: contents)
  end
end

contents = <<-LYRICSTRING
[Produced by Kanye West]

Ladies and gentlemen, let's put our hands together for this dynasty

[Intro]
Welcome ladies and gentlemen to the 8th wonder of the world
The flow of the century, always timeless, HOV!
Thanks for coming out tonight
You could've been anywhere in the world, but you're here with me
I appreciate that

[Verse 1]
H to the izz-O, V to the izz-A
For shizzle my nizzle used to dribble down in VA
Was herbin' em in the home of the Terrapins, got it dirt cheap for them
Plus if they was short with cheese I would work with them
Brought in weed, got rid of that dirt for them
Wasn't born hustlers, I was birthing 'em
H to the izz-O, V to the izz-A
For sheezy my neezy keep my arms so breezy
Can't leave rap alone, the game needs me
Haters want me clapped in chrome, it ain't easy
Cops want to knock me, D.A. wants to box me in
But somehow I beat them charges like Rocky
H to the izz-O, V to the izz-A
Not guilty, he who does not feel me
Is not real to me, therefore he doesn't exist
So poof! -- vamoose, son of a bitch!

[Hook]
H to the izz-O, V to the izz-A
For shizzle my nizzle used to dribble down in VA
H to the izz-O, V to the izz-A
That's the anthem, get your damn hands up!
H to the izz-O, V to the izz-A
Not guilty y'all got to feel me
H to the izz-O, V to the izz-A
That's the anthem, get your damn hands up!

[Verse 2]
I do this for my culture
To let them know what a nigga look like when a nigga in a Roadster
Show them how to move in a room full of vultures
Industry is shady, it needs to be taken over
Label owners hate me, I'm raising the status quo up
I'm overcharging niggas for what they did to the Cold Crush
Pay us like you owe us for all the years that you hoed us
We can talk, but money talks, so talk more bucks

[Hook]

[Verse 3]
Hov is back, life stories told through rap
Niggas acting like I sold you crack
Like I told you sell drugs; no, Hov did that
So hopefully you won't have to go through that
I was raised in the projects, roaches and rats
Smokers out back selling their mama's sofa
Lookouts on the corner focused on the ave
Ladies in the window, focused on the kinfolk
Me under a lamppost, why I got my hand closed?
Crack's in my palm, watching the long arm of the law
So you know I seen it all before
I've seen Hoop Dreams deflate like a true fiend's weight
To try and to fail: the two things I hate
Succeed, and this rap game: the two things that's great
H to the izz-O, V to the izz-A
What else can I say about dude? I gets bu-sy
LYRICSTRING

desc = <<-DESCSTRING
“Izzo (H.O.V.A.)” was Hov’s very first top-10 single on the Billboard 100.

The 1st verse deals with the rapper’s early career as a drug dealer, including his escape from conviction. The 2nd verse narrates his struggles with the exploitative recording industry, while in the last verse he reverts to his childhood growing up in the Marcy Houses housing projects

The song’s lyrics “H to the izz-O, V to the izz-A” use the -izzle language code — invented by E-40 and popularized by Snoop Dogg — to spell out H.O.V.A. which refers to one of Jay-Z’s nicknames, “Hova”, which is play on God’s name (as in “Jehovah”, aka “Yahweh” aka “Hashem”)

DESCSTRING

jayz = Artist.create!(name: "Jay-Z")
izzo = jayz.songs.create!(title: "Izzo", contents: contents, description: desc)
f1 = izzo.song_fragments.create!(offset_start: 0, offset_end: 23)
f2 = izzo.song_fragments.create!(offset_start: 26, offset_end: 46)

anno_contents =<<-ANNOSTR
Hov talking about the sample:

[M]y mom and pop had an extensive record collection. So Michael Jackson and Stevie Wonder, and all those sounds and souls — and Motown etc., etc. — filled the house. So I was very familiar with the song when Kanye bought me the sample. It was just such an interesting and fresh take on it that I immediately was drawn to it.
The track helped establish the sped-up soul sample as a significant tool of production and Kanye himself said:

Brought back the soul
The drums may be an interpolation/replayed sample of the drums from “Xxplosive” by Dr. Dre, which Kanye has admitted to biting before.

ANNOSTR

a1 = f1.create_annotation!(contents: anno_contents)

f2.create_annotation!(contents: "Cmon ladies and gents lets admire this man right here")


izzo.comments.create!(user_id: max.id, contents: "The first time I heard this beat my life changed")

a1.comments.create!(user_id: max.id, contents: "Trueeeeeeeee")
