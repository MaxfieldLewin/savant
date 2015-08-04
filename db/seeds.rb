
max = User.create!(username: "Max", email: "max@max.max", password: "maxmax")
rob = User.create!(username: "Rob", email: "rob@rob.rob", password: "robrob")
guest = User.create!(username: "Guest", email: "guest@guest.guest", password: "guestguest")

rap = Genre.create!(genre_name: "Rap")
rab = Genre.create!(genre_name: "R&B")
poetry = Genre.create!(genre_name: "Poetry")
lit = Genre.create!(genre_name: "Lit")
news = Genre.create!(genre_name: "News")
tech = Genre.create!(genre_name: "Tech")

images = {
  :lil_b => File.new("#{Rails.root}/app/assets/images/missing.jpg"),
  :doom => File.new("#{Rails.root}/app/assets/images/doom.jpg"),
  :shakespeare => File.new("#{Rails.root}/app/assets/images/shakespeare.jpeg"),
  :hd => File.new("#{Rails.root}/app/assets/images/hd.jpg"),
  :dhh => File.new("#{Rails.root}/app/assets/images/dhh.jpeg"),
  :jamaica => File.new("#{Rails.root}/app/assets/images/jamaica.jpeg"),
  :arundhati => File.new("#{Rails.root}/app/assets/images/arundhati.jpg"),
  :beyonce => File.new("#{Rails.root}/app/assets/images/beyonce.jpg"),
  :obama => File.new("#{Rails.root}/app/assets/images/obama.jpg"),
}


lilb_lecture = "Man. I love y’all, man. I hope this table don’t fall and everything stays smooth. First off, NYU I want to say I love you. And thank each and every one of you, every beautiful person in the building, every legend, every historical human being. You know, every future legend in the building, man. I’m in the building with the future. Y’all going to be helping me when things get hard for me. That’s what I hope. I hope everybody leaves this conversation together feeling like family. This is not everybody listening to me, this is everybody is a part of it. If you feel compelled to say something in your heart, please do, because at the end of the day we all have something to teach, and we all have something to say

I want to come to this with a story that I feel symbolizes everybody in the building. This happened to me two days ago. I’m going to the gas station and this older guy—he looks like he’s about 70. Me generalizing and stereotyping, I asked him, “Yo, excuse me sir, how you doing? What has changed for you in the last years? From like when you was younger until now?” And he was like, “You really wanna know?” And I was like, “Yes, sir, I really want to know.” And he was like, “You know what has changed?” And he was like, “Your attitude.” And that was deep, bro! That was deep! I feel that represents us all of us today

I thank y’all for not judging me and being able to respect us being humans. That’s what we should all be able to do. I specialize in love. A lot of people wonder, the small majority who don’t understand wonder why Lil B would be here. But you know, it’s good. I love to spread love, you know. That’s what I’m here to do

This is the big thing I want to speak on to set the tone: Nobody in this building asked to be born. You didn’t ask to be you, bro. I didn’t ask to be me. I didn’t ask to have this skin. I didn’t ask to be who I was, bro. Nobody in here asked that. The beautiful people? Your beautiful parents made you, bro. You didn’t ask for that. You didn’t ask to live where you live or anything. So when you see people, forgive them and accept, you feel me? You gotta open your mind and say, man, nobody asked to be born. Life is hard, kinda

Ay, bruh, I love you positively. I love all y’all. With relationships and women and being together and everybody, man, it’s just like… It’s just real. I’m just happy you guys are getting the real me. No pen, no pad. I didn’t script a speech. I come here and all I can do is be myself and spread love. But with relationships and stuff man, I’m just taking it slow. Taking it easy. A lot of things are happening real fast and I’m just taking my time and respecting women, respecting others. I mean, but that’s obvious, though. To respect women is obvious, yo

And a big thing I’ve been thinking about is the tone with a lot of people I meet and the media, I see it’s a lot of: If you get hit, you hit back. Why is that? Real recognize real, bro. You get blessed out of situations. I did that situation because I wanted the world to see that you can have a million stones thrown at you and you can still be positive. You know, that was kind of embarrassing. I had a lot of hood credibility [makes quotation marks in the air]. I had a lot of imaginary hood respect. But you know, at the end of the day, it’s no respect in being violent or a coward for no reason. It’s no honor in picking on people. It’s no honor in senseless violence. It’s no honor in war

But at the end of the day, I look at animals and insects. You know I’m the first rapper to adopt a tabby cat. You know I adopted straight from the ASPCA, you feel me? Just breaking the boundaries, man, showing everybody it’s okay to be yourself. Embrace yourself. Embrace your health. Ayyy! Just continue to love yourself and accept

I can’t lie, when I was younger I loved the media. I believed the media. I can say I was a product of my environment. You know, you grow up. I remember when I was younger, I didn’t know how to walk. I was so young, I was wondering how I was walking. Am I walking weird? Something’s in my butt? You know what I mean? But really so conscious, though. So hard on myself. And I say through time and love it’s just easing up on yourself, easing up on life

It’s a lot of words people have given so much power. When I mean things to be specific, it’s that tone of you hit me I hit you. That’s not right. The new generation as I see it, how I hold my integrity, why I conduct myself in the way I do—people see me and they say, “He didn’t retaliate or taunt that man, and he could have.” There are people that love me. People were upset. But just because somebody wants to fight you for no reason, or because somebody says something to you, you can forgive that person. I’d be that guy’s friend. You’ve gotta move on and be positive. We’re way past dwelling. I spread that love. Keep it and don’t be hard on yourself with anything, how you look to your weight to wanting to complete what your parents want you to be. Don’t stress so hard. Pat yourself on the back. You’re at NYU. Congratulations. What you guys are doing is very brave. Everybody that is going through school, you’ve made a huge sacrifice. All the staff, all the beautiful students, everybody that’s here to teach. Shouts out to everybody that’s here for learning and love and trying to find their way. I mean, shit. I mean, shoot. We’re all trying to find our way. I want to thank you for embracing and accepting me, like really. I love you

I want to show: have friends of all creeds, all colors, all races. Stop saying, black, white, this, that—we’re all human. Now I don’t know everything. This is my philosophy. But I feel like things are just generalizations. Drop all that. Stop giving negative words so much power. Instead of saying, “Hey, look at him, he’s black,” just say, “Hey, where are you from? What is your nationality?” Just take two seconds instead of generalizing, because, I promise you, I looked up what black means online, and black means something like coal, you feel me?

We all got problems too, bro, real talk. We all can have something that we can relate to. Make sure you can relate and have a common. And if you do feel too different, make sure you respect the people. Give people a chance to come in your heart. I know why a lot of people don’t trust people. You know why? There’s a lot of mean, bad people out here. A lot of people don’t have a value on their own life. They don’t have a value on how blessed we are to be alive. Our generation right here, we’re on a class of earth together. This is our class. All of us are going to be like, “Hey, remember 20 years ago when we did that?” Don’t be hard on each other. Let your friends have fun. Work hard and do what you do because we’ve only got one life to live. That is scary, you know. It’s scary and it’s really real, it’s really true. It just makes me appreciate people. Appreciate every single person. Look at them like a golden, million-dollar baby. Ay, bruh, I’ma tell you the real secrets of life, bruh. Ay, bruh, feel me, bruh, I got the real secrets. For real, bro. For real. Real talk: the secrets of life? Look at everybody like they’re a baby. Remember like, man, we’re young. Don’t be so hard on people. We’re just little baby insects or mammals or whatever. You feel me?

I tell you, bruh, I was looking at insects. I do my observations when I go out. If I become a neurosurgeon or I’m about to come into some bugs, I’m rocking. With the bugs, man, you just be looking at them. Because I was having these big ant problems in my house. It was crazy. And these are people in their own way, too. As I was studying these ant colonies infesting my house daily, I’m not kidding you, I left food out and 20 minutes later r-r-r-r-r and I’m like, man, they already know! They get it down pat! And real talk, like, seeing these ants and studying them and respecting them, it’s like, man, they’re in their own community too. They’re trying to
Survive. They love. They fight. They telling themselves something. We can’t understand, but one day we will. I’m trying hard to figure it out. I’m there with them. We’re very smart animals, you know, or whatever we are. Organisms? What are we? What do y’all think we are? Is there like a fact? Does anybody have any proof what we are? Live that life, experience it, travel, and come up with your theories man. Read the books, too, but experience your own. It’s crazy

Some of the things I think about on the daily: I just want my people to be safe. [Audience member: 'What you think about, bro?!'] Safety, man. And real talk, everybody make sure you wear seat belts, for real

Man, I’m pro-caring. That’s a big thing we should bring back. Let’s bring back caring about each other, honestly, genuinely. Anybody can have their preconceived notion about me. They can be like, “I think he looks like this and I have my vision in my head.” But after the day, break that down. Look at me and I’m not what you think. Some people not even be thinking nothing about me. They might have love. They might look at me like a baby, like a little alien. Cuddle. Hold me. But, man, bruh, all this is is a positive healing. With this historical time together I want everybody in this building to know everybody is your friend here. People that love Lil B’s music and respect Lil B from the core, we’re about positivity and not judging, letting people be theyselves. Be yourself one hundred and one thousand percent. Everybody man, from the sides to the back to the middle to the sides, you might not even know people, but if you rock with Lil B music and respect me from the core, you should know that based means you have someone you can trust, because we all have a common courtesy. It’s about having empathy now. What I mean is really caring and paying attention to somebody else’s feeling. You gotta have empathy and know we all on this common vibe. It’s all peace. It’s saying, hey, you know what, you can hit me and I’m not hitting you back. And that takes a very big person to do that. If someone attacks you or your family, at the end of the day you do what you gotta do. But I’m saying, if you really want to be a bigger person?

I go to sleep and I’m so happy. You know why? I know I’m living what I’m talking about. I go to sleep and I’m like, nyah. On my bean bag like nyah. I’m making history and I’m living it and I’m honest. It feels so good to be honest. Honest as we can be. Nyah. Honesty, integrity, loyalty, passion, friendship. For real, man, that’s real

It’s funny, you feel me, this is how I really feel. I’m glad I can come tell you guys and you can see my personality and see this is really Lil B. This is what he wants. Regardless of what anybody says, I want all of you to live as long as possible, have a great, healthy life, fun, full of adventure, full of mystery, full of trials and tribulations. Just going through and seeing things, being able to forgive

Test your friends. See who really loves you. Remember that. See who will be with you forever. Just see. Take some time out for yourself. A lot of people miss communication. Friendships are such deep things that sometimes people tangle the friendship. People are like, “Well, I knew this person since I grew up, but this person’s a douche. You feel me? But I’ll still be his friend. But it’s like, we don’t agree. But it’s like, I have some weird thing in my head so I’ll still be your friend.” But be honest with yourself. Be around people who represent you, who you feel is on the same kind of monotone, you feel me? Who’s on your wavelength. I love y’all. Hopefully, everybody in this building is on the same wavelength, you feel me. You guys are very brave and historical and legendary, like I said, so I know everybody is on a wavelength. I’m looking at everybody and I know we could chill and we could have some good stories

What are some of the things that y’all be feeling? What are some of things that y’all are going through? [Audience: 'Family problems… sales tax… the cooking dance.'] You know we ain’t gonna pull that dance out man! That’s millions, billions! I’m feeling like Michael Jackson out there, whipping the wrist like br-br-br-da! But I’m too subtle now. We representing. I got this beautiful quilt. I would’a come up here in a suit so y’all could take me seriously. I take y’all so seriously. I take the based god seriously

This is about me spreading my love to y’all. This is about saying how much I love you guys. How much I love being alive. How much I love human beings. How lucky we are to have this structure. Who built this? Tell me who built this building, please. Just going through New York you see just, wow, you have so much beautiful architecture. It’s so rich. When I look at the buildings, I’m like, dude, everybody is lucky. This might not be here forever. Anything could happen. Take heed, you guys are lucky you’re alive. Really, take heed. Can I hear you say, I’m lucky I’m alive! No, really, please, can you feel it? I’m lucky I’m alive!

Real talk: Don’t ever deny the voices in your head either. When you’re sitting at home alone, right, we all go through depression, anxiety. You’re by yourself and you hear those voices going wild in your head, in your unconscious, those angels by your side, your mental, your gut feeling, your heart. Listen to them. Let your mind tell you how you feel. Let your body tell you. Be in tune with your rare—this is a very rare thing. I’m like a robot. Hey look, tell your hand to do this. [Raises hand]. It’s like, man, that’s amazing! That’s amazing to me

Hey, man, salute to all the beautiful doctors, everybody that’s researching and helping find cures. Salute to everyone who’s finding cures to diseaaaases. Everybody that’s aiding the people. The silent, beautiful American people that are working hard daily. Thank you to everybody. Honestly, a lot of people deserve to be where I’m at. There’s a lot of people that’s legendary, and to all those people I love you

[Audience member: 'Run for president!'] Ay, I don’t know man. But you know, I have nothing to hide either. I might run for president because y’all know everything about me. Look, my very smart NYU family, I tell you, I have nothing to hide and y’all shouldn’t either. Don’t let other people’s stereotypes or stigmas or words put you in a box. Don’t let that run your day. Don’t be depressed anymore. Believe in yourself. Sometimes you look at yourself in the mirror like, “Ew, really?” For real. I went to the mirror, man, I’m like, “Damn. How? How am I succeeding?” Y’all make me feel gorgeous, but sometimes you go to the mirror like, “Oh my god, I’m not that gorgeous.” But it’s all from your heart though, and that’s why you can always feel gorgeous, one hundred percent. To say “I’m not that gorgeous” is only a reflection of the media. You are gorgeous. I’m telling you. You are what you believe you are. You are a model. You are a rapper. You are a student. You are a positive person. Don’t let these words feel like you’re different. Nobody is different, I’m telling you, and nobody asked to be born. I’m telling you, bro, I’m telling you. I’m telling you

Shouts out to Jay-Z, though. Shouts out to Jayyyy-Zeeeee, you feel me?

Does anybody have anything to ask me? I say this, though, out of respect: You see everybody raising their hand, right? Just me personally, when I’m driving, I see somebody raising their hand and my whole attitude of respect is to let this person go. That’s my reaction. You see somebody raising their hand? Here you go. Just that vibe, just that tone. We all got our hands raised and we all want to talk, so let that person talk and you’ll be next. I feel everybody can do it civilized

I just want people to see the tone of respect I’m carrying, the love and respect I’m trying to instill for the generations. I don’t have no secret plan behind it. I generally want to bring back the people, all of us loving each other. We all human, we all people. Have fun while you’re alive. God bless, we’re all about to die some day. Be ready. I just want to say, humbly think about this. Our bodies are amazing. We’re all consistently—our white warrior blood cells, our red blood cells, everybody is fighting for us in our body and we don’t see. Salute to our brain and our cells fighting for us, fighting off those infections when you rub your butt and you forget to—when you’re writing a paper and you wipe your butt and you go to shake your partner’s hand. Wash your hands! Wash your hands! It’s crazy! I’m watching my hands all the time, shouts out to Sam for that

At the end of the day, we can’t judge anybody. From the richest to the homeless, from the dog to the cat. You have to look at these things. I thank my car that I didn’t get into an accident. I’m like, thank you. Brand new. Nothing I drive is under 50,000 miles. 50, 50, 50,000, bro. Straight from Europe. I tell you, I’m Buick’d up. Toyota, whatever. We doing it. But like I say, I thank my car. Thank you whoever, whatever, earth, spirit, myself, people. I’m like, man, I got from point A to point B safely. Congratulations to everybody getting here safely, man, I’m telling you. And shouts out to New York for always embracing me. Always. Because, man, coming from Berkeley

Being in this industry, man, you guys have got to watch out. In business, there are going to be a lot of people. This is crazy and I’m going to tell it to you like this, this is what I really live by. I run my business by this. You see a lot of people—and I cannot STAND these kind of people, I promise you—they’re like, “Ah, man, it’s just business. Business is business. It’s business.” It’s like, what are you talking about? Have some people love! What happened to humans? Everybody’s thinking about capital gains! Ay, bruh, I’m serious. I’m like, dude, I’m hollering at somebody because I do this out of love. I do this for free, for the love. Y’all make me. The people make me. I been giving you stuff free, over two thousand songs. Lil B. I’m around my business different. It’s business, but do what you love. If you want to do something out of love and the spirit, do something because your heart tells you that. Do something, not because, oh, it’s a business, oh, beat me in the business, I’m going to do this favor because it’s the business, I’m not going to pay attention to you because it’s the business, I’m going to treat you unequal because it’s the business, or I’m going to treat you some way because it’s the business. What happened to being a naked human being? Even though we’re not. We’re advanced now, like you see. It’s obvious we’re not naked

Salute to the architects, man, anybody that’s designing things. Anybody in here designing anything? Salute to you, bruh. Build some of the next beautiful buildings. Thank you. So what’s everybody doing up in here? What you going here for? I know we got a lot of future legends? Congratulations! Salute yourself! Be happy! Talk about yourself! And you know on top, this is one of the best schools ever

Salute to the generation and to all our kids that are just going to be friends. I can’t wait for all of our kids. We about to grow up, 50, 40, and we’ll be looking at people with no boundaries, no colors, no judgement. I’m a really do this: I want to have a place where you can come. It’s going to be like a city. You can come and it’s like, bruh, everybody is on the same wavelength of positivity. You see somebody? Let them go. Ask somebody how they’re doing today. I had to train myself to do that. I didn’t just become a happy person, you feel me. I had to train myself. I lied to myself for a while. I had to train myself, because I wasn’t always positive. I think I was so busy trying to be cool. Being younger, I was skinny and stuff, I was like, I need to garner my respect in the streets. I didn’t want to get picked on, so it was things I did that I felt were necessary. You grow up and you’re like, man, I was just so wrapped up. Be yourself. I was wrapped up in friends and wanting to be this and wanting respect. This was young. It’s crazy what goes on. You see the cool guys, or in high school it’s the bad kids. Everybody has their adventure

I was a product of the media and my environment. I seen the people I like with gold teeth, and I was like, man, I want gold teeth. He looked like me and I wanted gold teeth. Everybody can get a grill in here. Everybody should embrace that. Get gold teeth! Don’t be thinking so hard, like, “Oh, man, I can’t get gold teeth.” Who is going to say what to you? We got love in our heart. We good people. Can’t nobody tell you nothing if you doing it from the love and you’re embracing people. Try to have fun and try to be as less ignorant as possible and meet people. I’m trying to set a tone for the younger generations. You can look how you want, but now you will be judged from your soul and your heart. Why I work everyday and why I love you guys so much is I want people to no longer, as hard as it is, to not judge somebody for the look but from their heart and their actions and their positivity and how much they put out there. Even if you’re pissed off, still stay positive. If you got a friend doing bad, be like, “Stay positive.” That’s the only way. Positivity, happiness, forgiving, forgiving, forgiving

Forgiveness? Forgiving. I think that’s number one. Forgive and say, “Man, we only human. Man, nobody hates you.” We might feel that people hate us, and people do mean. But I go to sleep every night and I feel good, despite the hate every day and the threats. You take a deep breath and you know what you’re doing it for. We’re all searching life for how we can serve humanity. What are we going to do that we can do for free for the rest of our lives and feel good about? How are you going to serve the humans?

You know how I serve humanity? Spreading true love. Putting myself out there to be vulnerable, to be criticized, to be one of the most critiqued artists ever. They’re like, brrrr, Lil B said this at this time. Lil B is talking here. It’s beautiful, and I want to give this scarf to somebody too. And real talk, I want to give some books to the beautiful students that made this happen. I’ve got a few of my rare books. It’s love, bro. Shouts out to Seb. I see you. This is the first book I ever wrote when I was 19. We got the positive DVD in there. You already know me because you’re seeing me right now. You guys see my true core. It’s not sketchy. It’s no fraud. It’s no corporation backing me. I really love people, I’m really here for the people. I don’t care. It’s not gimmicks. I pick and choose what I want to do. I deny a lot of people and I love it, I stay rare. Nobody will ever work with Lil B and that’s how it goes

I’m ready to die for the humans. I’m ready to die for positivity. I’m ready to be the poster. A lot of hip-hop artists don’t understand the position they’re in. They be like, “Bruh, I’m not a role model.” And me, I feel totally different. I feel like I am a role model, and we all are. We all role models. Without y’all, it’d be no me. As a role model with the power influence, whether it’s Twitter followers or friends, you always want to use your influence for positive things. Put down the guns. Please stop the gun violence. Stop the knife violence. The chemical warfare, let’s stop that. Biological warfare, let’s stop that. Who knows about hydraulic fracking? Let’s stop fracking! Hey, bruh, stop messing with the earth, bruh. Real talk, we hear about these deadly gases going on in the earth, and I’m like, whodie! For real. I’m like, whodie. Whodie, get that oil out the ocean, whodie

I see what we’re living in. We were all born into something. You have to salute the humans before us, right. I have no problem and no animosity because we’re in a beautiful place. Imperfections, duh, nothing is perfect, but this is beautiful right here. This moment. We gotta be happy about something. Everything is not going to be right, but we gotta be happy about something right now. It’s continuous life living, continuous rotations of life living. Like I said, stop messing with this earth. I’m going to be going in and learning new ways to protect the earth. Trust me, I don’t even litter. I’m not a litterer. You see me and I’m not throwing trash on the ground. If I throw this trash right here, this is just adding for someone to pick up. This is just adding for some animal to get stuck in. At the end of the day, it all starts from you

I had to take steps myself for people to believe in me. I had to be a walking light of spiritual positivity and a walking beam of love before anybody could respect that, you feel me? It’s a big thing like, people call me the based god out of respect. People aren’t stupid. People here are a high class of honor, and people from the highest class call me the based god. The based god came from positivity and love and from watching out for people. I take that with heed. When people call me the based god, I accept me, but I’m not the based god. The based god is better than me. It’s crazy, you know. It’s crazy. But we all got a hand in love. One by one, each and every one of us needs to keep living and embedding that positivity. Look at that person. They didn’t ask to be born, they didn’t ask to be who they are. It’s like, man, embrace their style. Look at somebody and be like, “Man, they’re unique. But how are we similar? What is our commons?”

My grammar and spelling and how I say things might not be technically what we hear or textbook, but as long as you understand me? You have to work as a human with empathy and love in your heart, staying positive and staying based and staying normal. You have to make an effort to learn about people. You have to make an effort at your job. You have to make an effort to care. When you care about everybody genuinely, when you look at everybody like they’re a million dollars, it takes a lot of energy out you. You give everybody a chance. This is the successful lifestyle of personal excellence. Success is what you see on the outside, but I live a life of personal excellence. People can look at a Bentley as success or money as success, but at the end of the day personal excellence is what you strive for. Everybody is successful, we all made it. Y’all are in college. But now it’s about going back

I have no pride. I have no pride issues. I have no pride. I can’t be under as well as be on top, and that’s for the people. That’s why I never signed a deal. I’m unsigned. I have no record label behind me. When you see everything I do, this is me pushing my love. It was a lot of managers and fake managers that wanted to claim me, and you have to watch out for the industry predators, and predators in business. And sexual predators. We’ve dealt with that. It’s a very touchy subject and it’s very uncomfortable for all of us. Anybody who has went through hardships like that, I love y’all, and the best I can tell y’all is to forgive. Cleanse your soul and forgive yourself. Don’t be hard on yourself

I don’t write my speeches. Any time I speak it will be from the heart. You can’t write down love. If I was a phony man, y’all could look me in my face, man. If I didn’t have love, and if I didn’t really care about the community and wanting people to excel—I want all of us as a human race to excel and stop being so hard on each other. Stop using separation. Stop saying, “Why are you dressed like that?” What are you talking about? Like, stop. If someone looks different from you, admire them. Stop thinking so hard about things. Have a light heart. Get lighthearted. I think that’s a big tone of what I pray for everybody in the building and in our anything-is-possible generation. Just be you. The anything-is-possible generation. What is based? What does based mean? Shwoo. Shwoo. Shwoo"

lilb = Artist.create!(name: "Lil B");
lilb.songs.create!(title: "Lecture at NYU", contents: lilb_lecture, image: images[:lil_b], genre: rap)

strange_ways = "[Verse 1: MF DOOM]
Wreak havoc, beep beep it's mad traffic
Sleek and lavish people speaking leaking to the maverick
He see as just another felony drug arrest
Any day could be the one he pick the wrong thug to test
Slug through the vest... Shot in the street
For pulling heat on a father whose baby's gotta eat
And when they get hungry, it ain't shit funny
Paid to interfere with how a brother get his money
Now, who's the real thugs, killers and gangsters?
Set the revolution, let the things bust and thank us
When the smoke clear, you can see the sky again
There will be the chopped off heads of leviathan
My friend, they call 'em strangers
Anybody talk to him end up in some danger

(They stay... Strange ways)
Can't reform 'em

[Verse 2: MF DOOM]
They pray four times a day, they pray five
Who ways is strange when it's time to survive
Some will go of they own free will to die
Others take them with you when they blow sky high
What's the difference? All you get is lost children
While the bosses sit up behind the desks
It cost billions to blast humans in half, into calves and arms
Only one side is allowed to have bombs
It's like making a soldier drop his weapon
Shooting him, and telling him to get to stepping
Obviously, they came to portion up his fortune
Sounds to me like that old robbery/extortion

(They stay)
Same game
(Strange ways)
Ya can't reform 'em

(Outro/Cut: From Tex Avery's Symphony in Slang)
..that Mary was goin' around with an old flame
That burned me up, because I know he was just feeding her a line!
But the guy really spent his money like water
I think he was connected, so I left
Outside it was raining cats and dogs
I was feelin' mighty blue... and everything looked black
But I carried on!"

doom = Artist.create!(name: "MF DOOM");
doom.songs.create!(title: "Strange Ways", contents: strange_ways, image: images[:doom], genre: rap)

sonnet30 = "When to the sessions of sweet silent thought
I summon up remembrance of things past,
I sigh the lack of many a thing I sought,
And with old woes new wail my dear time's waste:
Then can I drown an eye, unused to flow,
For precious friends hid in death's dateless night,
And weep afresh love's long since cancelled woe,
And moan the expense of many a vanished sight:
Then can I grieve at grievances foregone,
And heavily from woe to woe tell o'er
The sad account of fore-bemoaned moan,
Which I new pay as if not paid before.
But if the while I think on thee, dear friend,
All losses are restor'd and sorrows end."

shak = Artist.create!(name: "William Shakespeare");
shak.songs.create!(title: "Sonnet 30", contents: sonnet30, image: images[:shakespeare], genre: poetry)

garden = "I

You are clear
O rose, cut in rock,
hard as the descent of hail.

I could scrape the colour
from the petals
like spilt dye from a rock.

If I could break you
I could break a tree.

If I could stir
I could break a tree—
I could break you.


II

O wind, rend open the heat,
cut apart the heat,
rend it to tatters.

Fruit cannot drop
through this thick air—
fruit cannot fall into heat
that presses up and blunts
the points of pears
and rounds the grapes.

Cut the heat—
plough through it,
turning it on either side
of your path.
Source: Poetry (March 1915)."

hd = Artist.create!(name: "H.D.");
hd.songs.create!(title: "Garden", contents: garden, image: images[:hd], genre: poetry)


tddIsDead = "TDD is dead. Long live testing.
By David Heinemeier Hansson on April 23, 2014

Test-first fundamentalism is like abstinence-only sex ed: An unrealistic, ineffective morality campaign for self-loathing and shaming.

It didn't start out like that. When I first discovered TDD, it was like a courteous invitation to a better world of writing software. A mind hack to get you going with the practice of testing where no testing had happened before. It opened my eyes to the tranquility of a well-tested code base, and the bliss of confidence it grants those making changes to software.

The test-first part was a wonderful set of training wheels that taught me how to think about testing at a deeper level, but also some I quickly left behind.

Over the years, the test-first rhetoric got louder and angrier, though. More mean-spirited. And at times I got sucked into that fundamentalist vortex, feeling bad about not following the true gospel. Then I'd try test-first for a few weeks, only to drop it again when it started hurting my designs.

It was yoyo cycle of pride, when I was able to adhere to the literal letter of the teachings, and a crash of despair, when I wasn't. It felt like falling off the wagon. Something to keep quiet about. Certainly not something to admit in public. In public, I at best just alluded to not doing test-first all the time, and at worst continued to support the practice as 'the right way'. I regret that now.

Maybe it was necessary to use test-first as the counterintuitive ram for breaking down the industry's sorry lack of automated, regression testing. Maybe it was a parable that just wasn't intended to be a literal description of the day-to-day workings of software writing. But whatever it started out as, it was soon since corrupted. Used as a hammer to beat down the nonbelievers, declare them unprofessional and unfit for writing software. A litmus test.

Enough. No more. My name is David, and I do not write software test-first. I refuse to apologize for that any more, much less hide it. I'm grateful for what TDD did to open my eyes to automated regression testing, but I've long since moved on from the design dogma.

I suggest you take a hard look at what that approach is doing to the integrity of your system design as well. If you're willing to honestly consider the possibility that it's not an unqualified good, it'll be like taking the red pill. You may not like what you see after that.

So where do we go from here?
Step one is admitting there's a problem. I think we've taken that now. Step two is to rebalance the testing spectrum from unit to system. The current fanatical TDD experience leads to a primary focus on the unit tests, because those are the tests capable of driving the code design (the original justification for test-first).

I don't think that's healthy. Test-first units leads to an overly complex web of intermediary objects and indirection in order to avoid doing anything that's 'slow'. Like hitting the database. Or file IO. Or going through the browser to test the whole system. It's given birth to some truly horrendous monstrosities of architecture. A dense jungle of service objects, command patterns, and worse.

I rarely unit test in the traditional sense of the word, where all dependencies are mocked out, and thousands of tests can close in seconds. It just hasn't been a useful way of dealing with the testing of Rails applications. I test active record models directly, letting them hit the database, and through the use of fixtures. Then layered on top is currently a set of controller tests, but I'd much rather replace those with even higher level system tests through Capybara or similar.

I think that's the direction we're heading. Less emphasis on unit tests, because we're no longer doing test-first as a design practice, and more emphasis on, yes, slow, system tests. (Which btw do not need to be so slow any more, thanks to advances in parallelization and cloud runner infrastructure).

Rails can help with this transition. Today we do nothing to encourage full system tests. There's no default answer in the stack. That's a mistake we're going to fix. But you don't have to wait until that's happening. Give Capybara a spin today, and you'll have a good idea of where we're heading tomorrow.

But first of all take a deep breath. We're herding some sacred cows to the slaughter right now. That's painful and bloody. TDD has been so successful that it's interwoven in a lot of programmer identities. TDD is not just what they do, it's who they are. We have some serious deprogramming ahead of us as a community to get out from under that, and it's going to take some time.

The worst thing we can do is just rush into another testing religion. I can just imagine the golden calf of 'system tests only!' right now. Please don't go there.

Yes, test-first is dead to me. But rather than dance on its grave, I'd rather honor its contributions than linger on the travesties. It marked an important phase in our history, yet it's time to move on.

Long live testing."

dhh = Artist.create!(name: "DHH");
dhh.songs.create!(title: "TDD is dead. Long live testing.", contents: tddIsDead, image: images[:dhh], genre: tech)

girl = "Wash the white clothes on Monday and put them on the stone heap; wash the color clothes on Tuesday and put them on the clothesline to dry; don't walk barehead in the hot sun; cook pumpkin fritters in very hot sweet oil; soak your little cloths right after you take them off; when buying cotton to make yourself a nice blouse, be sure that it doesn't have gum on it, because that way it won't hold up well after a wash; soak salt fish overnight before you cook it; is it true that you sing benna in Sunday school?; always eat your food in such a way that it won't turn someone else's stomach; on Sundays try to walk like a lady and not like the slut you are so bent on becoming; don't sing benna in Sunday school; you mustn't speak to wharf–rat boys, not even to give directions; don't eat fruits on the street—flies will follow you; but I don't sing benna on Sundays at all and never in Sunday school; this is how to sew on a button; this is how to make a button–hole for the button you have just sewed on; this is how to hem a dress when you see the hem coming down and so to prevent yourself from looking like the slut I know you are so bent on becoming; this is how you iron your father's khaki shirt so that it doesn't have a crease; this is how you iron your father's khaki pants so that they don't have a crease; this is how you grow okra—far from the house, because okra tree harbors red ants; when you are growing dasheen, make sure it gets plenty of water or else it makes your throat itch when you are eating it; this is how you sweep a corner; this is how you sweep a whole house; this is how you sweep a yard; this is how you smile to someone you don't like too much; this is how you smile to someone you don't like at all; this is how you smile to someone you like completely; this is how you set a table for tea; this is how you set a table for dinner; this is how you set a table for dinner with an important guest; this is how you set a table for lunch; this is how you set a table for breakfast; this is how to behave in the presence of men who don't know you very well, and this way they won't recognize immediately the slut I have warned you against becoming; be sure to wash every day, even if it is with your own spit; don't squat down to play marbles—you are not a boy, you know; don't pick people's flowers—you might catch something; don't throw stones at blackbirds, because it might not be a blackbird at all; this is how to make a bread pudding; this is how to make doukona; this is how to make pepper pot; this is how to make a good medicine for a cold; this is how to make a good medicine to throw away a child before it even becomes a child; this is how to catch a fish; this is how to throw back a fish you don't like, and that way something bad won't fall on you; this is how to bully a man; this is how a man bullies you; this is how to love a man; and if this doesn't work there are other ways, and if they don't work don't feel too bad about giving up; this is how to spit up in the air if you feel like it, and this is how to move quick so that it doesn't fall on you; this is how to make ends meet; always squeeze bread to make sure it's fresh; but what if the baker won't let me feel the bread?; you mean to say that after all you are really going to be the kind of woman who the baker won't let near the bread?"

jk = Artist.create!(name: "Jamaica Kincaid");
jk.songs.create!(title: "Girl", contents: girl, image: images[:jamaica], genre: lit)

gost = "Pappachi's Moth: Chapter 2 (pg49-52)
Ammu said that Pappachi was an incurable British CCP, which was short for chhi-chhi-poach and in Hindi meant shit-wiper. Chacko said that the correct word for people like Pappachi was Anglophile. He made Rahel and Estha look up Anglophile in the Reader's Digest Great Encyclopedic Dictionary. It said: Person well disposed to the English.
Then Estha and Rahel had to look up dispose.

It said:
(1) Place suitably in particular order.
(2) Bring mind into certain state.
(3) Do what one will with, get off one's hand's, stow away, demolish, finish, settle, consume (food), kill, sell.

Chacko said that in Pappachi's case it meant (2) Bring mind into state. Which, Chacko said, meant that Pappachi's mind had been brought into a state which made him like the English.

Chacko told the twins that, though he hated to admit it, they were all Anglophiles. They were a family of Anglophiles. Pointed in the wrong direction, trapped outside their own history and unable to retrace their steps because their footprints had been swept away. He explained to them that history was like an old house at night. With all the lamps lit. And ancestors whispering inside.

'To understand history,' Chacko said, 'we have to go inside and listen to what they're saying. And look at the books and the pictures on the wall. And smell the smells.'

Estha and Rahel had no doubt that the house Chacko meant was the house on the other side of the river, in the middle of the abandoned rubber estate where they have never been. Kari Saipu's house. The Black Sahib. The Englishman who had 'gone native.' Who spoke Malayalam and wore mundus. Ayemenem's own Kurtz. Ayemenem his private Heart of Darkness. He had shot himself through the head ten years ago, when his young lover's parents had taken the boy away from him and sent him to school. After the suicide, the property had become the subject of extensive litigation between Kari Saipu's cook and his secretary. The house had lain empty for years. Very few people had seen it. But the twins could picture it.

The History House.

With cool stone floors and dim walls and billowing ship-shaped shadows. Plump, translucent lizards lived behind old pictures, and waxy, crumbling ancestors with tough toe-nails and breath that smelled of yellow maps gossiped in sibilant, papery whispers.

'But we can't go in,' Chacko explained, 'because we've been locked out. And when we look in through the windows, all we see are shadows. And when we try and listen, all we hear is whispering. And we cannot understand the whispering, because our minds have been invaded by war. A war that we have won and lost. The very worst sort of war. A war that captures dreams and re-dreams them. A war that had made us adore our conquerors and despise ourselves.'

'Marry our conquerors, is more like it.' Ammu said dryly, referring to Margaret Kochamma. Chacko ignored her. He made the twins look up Despise. It said: To look down upon; to view with contempt; to scorn or disdain.

Chacko said that in the context of war he was talking about- the War of Dreams- Despise meant all those things.

'We're Prisoners of War,' Chacko said. 'Our dreams have been doctored. We belong nowhere. We sail unanchored on troubled seas. We may never be allowed ashore. Our sorrows will never be sad enough. Our joys never happy enough. Our dreams never big enough. Our lives never important enough. To matter...'"

ar = Artist.create!(name: "Arundhati Roy");
ar.songs.create!(title: "The God of Small Things (excerpt)", contents: gost, image: images[:arundhati], genre: lit)


flawless = "[Intro]
Your challengers are a young group from Houston
Welcome Beyonce, Lativia, Nina, Nicky, Kelly and Ashley
The Hip-Hop Rapping: Girls' TYME

Part 1 - Bow Down

[Hook]
I’m out that H-town
Coming, coming down
I’m coming down dripping candy on the ground
H, H-town, town, I’m coming down
Coming down, dripping candy on the ground

[Verse 1: Beyonce]
I know when you were little girls
You dreamt of being in my world
Don't forget it, don't forget it
Respect that, bow down bitches (crown)
I took some time to live my life
But don't think I'm just his little wife
Don't get it twisted, get it twisted
This my shit, bow down bitches

[Bridge]
Bow down bitches, bow-bow down bitches (crown)
Bow down bitches, bow-bow down bitches (crown)
H-Town vicious, H, H-Town vicious
I'm so crown, crown, bow down bitches

[Hook]

Part 2 - ***Flawless

[Intro: Chimamanda Ngozi Adichie]
We teach girls to shrink themselves, to make themselves smaller
We say to girls: 'You can have ambition, but not too much
You should aim to be successful, but not too successful
Otherwise, you will threaten the man'
Because I am female, I am expected to aspire to marriage
I am expected to make my life choices
Always keeping in mind that marriage is the most important
Now, marriage can be a source of joy and love and mutual support
But why do we teach girls to aspire to marriage
And we don't teach boys the same?
We raise girls to see each other as competitors
Not for jobs or for accomplishments, which I think can be a good thing
But for the attention of men
We teach girls that they cannot be sexual beings in the way that boys are
Feminist: a person who believes in the social
Political, and economic equality of the sexes

[Hook: Beyonce]
You wake up, flawless
Post up, flawless
Ridin' round in it, flawless
Flossin' on that, flawless
This diamond, flawless
My diamond, flawless
This rock, flawless
My Roc, flawless
I woke up like this, I woke up like this
We flawless, ladies tell 'em
I woke up like this, I woke up like this
We flawless, ladies tell 'em
Say 'I look so good tonight'
God damn, God damn
Say 'I look so good tonight'
God damn, God damn, God damn!

[Bridge: Beyonce]
Momma taught me good home training
My Daddy taught me how to love my haters
My sister told me I should speak my mind
My man made me feel so God damn fine (I'm flawless!)

[Hook: Beyonce]

[Outro]
The judges give champion Skeleton Groove 4 stars, a perfect score
The challenger, Girls' TYME, receives 3 stars
Skeleton Groove, champions once again
Congratulations, we'll see you next week
"

yonce = Artist.create!(name: "Beyonce");
yonce.songs.create!(title: "***Flawless", contents: flawless, image: images[:beyonce], genre: rab)

acceptance = "Thank you so much. Tonight, more than 200 years after a former colony won the right to determine its own destiny, the task of perfecting our union moves forward. It moves forward because of you. It moves forward because you reaffirmed the spirit that has triumphed over war and depression, the spirit that has lifted this country from the depths of despair to the great heights of hope, the belief that while each of us will pursue our own individual dreams, we are an American family and we rise or fall together as one nation and as one people.

Tonight, in this election, you, the American people, reminded us that while our road has been hard, while our journey has been long, we have picked ourselves up, we have fought our way back, and we know in our hearts that for the United States of America the best is yet to come.

I want to thank every American who participated in this election. Whether you voted for the very first time or waited in line for a very long time. By the way, we have to fix that.

Whether you pounded the pavement or picked up the phone. Whether you held an Obama sign or a Romney sign, you made your voice heard and you made a difference.

I just spoke with Governor Romney and I congratulated him and Paul Ryan on a hard-fought campaign.

We may have battled fiercely, but it's only because we love this country deeply and we care so strongly about its future. From George to Lenore to their son Mitt, the Romney family has chosen to give back to America through public service and that is the legacy that we honor and applaud tonight.

In the weeks ahead, I also look forward to sitting down with Governor Romney to talk about where we can work together to move this country forward.

I want to thank my friend and partner of the last four years, America's happy warrior, the best vice president anybody could ever hope for, Joe Biden.

And I wouldn't be the man I am today without the woman who agreed to marry me 20 years ago.

Let me say this publicly: Michelle, I have never loved you more. I have never been prouder to watch the rest of America fall in love with you, too, as our nation's first lady.

Sasha and Malia, before our very eyes you're growing up to become two strong, smart beautiful young women, just like your mom.

And I'm so proud of you guys. But I will say that for now one dog's probably enough.

To the best campaign team and volunteers in the history of politics...

The best. The best ever. Some of you were new this time around, and some of you have been at my side since the very beginning.

But all of you are family. No matter what you do or where you go from here, you will carry the memory of the history we made together and you will have the life-long appreciation of a grateful president. Thank you for believing all the way, through every hill, through every valley.

You lifted me up the whole way and I will always be grateful for everything that you've done and all the incredible work that you put in.

I know that political campaigns can sometimes seem small, even silly. And that provides plenty of fodder for the cynics that tell us that politics is nothing more than a contest of egos or the domain of special interests. But if you ever get the chance to talk to folks who turned out at our rallies and crowded along a rope line in a high school gym, or saw folks working late in a campaign office in some tiny county far away from home, you'll discover something else.

You'll hear the determination in the voice of a young field organizer who's working his way through college and wants to make sure every child has that same opportunity.

You'll hear the pride in the voice of a volunteer who's going door to door because her brother was finally hired when the local auto plant added another shift.

You'll hear the deep patriotism in the voice of a military spouse whose working the phones late at night to make sure that no one who fights for this country ever has to fight for a job or a roof over their head when they come home.
That's why we do this. That's what politics can be. That's why elections matter. It's not small, it's big. It's important.

Democracy in a nation of 300 million can be noisy and messy and complicated. We have our own opinions. Each of us has deeply held beliefs. And when we go through tough times, when we make big decisions as a country, it necessarily stirs passions, stirs up controversy.

That won't change after tonight, and it shouldn't. These arguments we have are a mark of our liberty. We can never forget that as we speak people in distant nations are risking their lives right now just for a chance to argue about the issues that matter, the chance to cast their ballots like we did today.

But despite all our differences, most of us share certain hopes for America's future. We want our kids to grow up in a country where they have access to the best schools and the best teachers.

A country that lives up to its legacy as the global leader in technology and discovery and innovation, with all the good jobs and new businesses that follow.

We want our children to live in an America that isn't burdened by debt, that isn't weakened by inequality, that isn't threatened by the destructive power of a warming planet.

We want to pass on a country that's safe and respected and admired around the world, a nation that is defended by the strongest military on earth and the best troops this -- this world has ever known.

But also a country that moves with confidence beyond this time of war, to shape a peace that is built on the promise of freedom and dignity for every human being. We believe in a generous America, in a compassionate America, in a tolerant America, open to the dreams of an immigrant's daughter who studies in our schools and pledges to our flag.

To the young boy on the south side of Chicago who sees a life beyond the nearest street corner.

To the furniture worker's child in North Carolina who wants to become a doctor or a scientist, an engineer or an entrepreneur, a diplomat or even a president -- that's the future we hope for. That's the vision we share. That's where we need to go -- forward.

That's where we need to go.

Now, we will disagree, sometimes fiercely, about how to get there. As it has for more than two centuries, progress will come in fits and starts. It's not always a straight line. It's not always a smooth path.

By itself, the recognition that we have common hopes and dreams won't end all the gridlock or solve all our problems or substitute for the painstaking work of building consensus and making the difficult compromises needed to move this country forward. But that common bond is where we must begin. Our economy is recovering. A decade of war is ending. A long campaign is now over.

And whether I earned your vote or not, I have listened to you, I have learned from you, and you've made me a better president. And with your stories and your struggles, I return to the White House more determined and more inspired than ever about the work there is to do and the future that lies ahead.

Tonight you voted for action, not politics as usual.

You elected us to focus on your jobs, not ours. And in the coming weeks and months, I am looking forward to reaching out and

Working with leaders of both parties to meet the challenges we can only solve together. Reducing our deficit. Reforming our tax code. Fixing our immigration system. Freeing ourselves from foreign oil. We've got more work to do.

But that doesn't mean your work is done. The role of citizens in our Democracy does not end with your vote. America's never been about what can be done for us. It's about what can be done by us together through the hard and frustrating, but necessary work of self-government. That's the principle we were founded on.

This country has more wealth than any nation, but that's not what makes us rich. We have the most powerful military in history, but that's not what makes us strong. Our university, our culture are all the envy of the world, but that's not what keeps the world coming to our shores.

What makes America exceptional are the bonds that hold together the most diverse nation on earth.

The belief that our destiny is shared; that this country only works when we accept certain obligations to one another and to future generations. The freedom which so many Americans have fought for and died for come with responsibilities as well as rights. And among those are love and charity and duty and patriotism. That's what makes America great.

I am hopeful tonight because I've seen the spirit at work in America. I've seen it in the family business whose owners would rather cut their own pay than lay off their neighbors, and in the workers who would rather cut back their hours than see a friend lose a job.

I've seen it in the soldiers who reenlist after losing a limb and in those SEALs who charged up the stairs into darkness and danger because they knew there was a buddy behind them watching their back.

I've seen it on the shores of New Jersey and New York, where leaders from every party and level of government have swept aside their differences to help a community rebuild from the wreckage of a terrible storm.

And I saw just the other day, in Mentor, Ohio, where a father told the story of his 8-year-old daughter, whose long battle with leukemia nearly cost their family everything had it not been for health care reform passing just a few months before the insurance company was about to stop paying for her care.

I had an opportunity to not just talk to the father, but meet this incredible daughter of his. And when he spoke to the crowd listening to that father's story, every parent in that room had tears in their eyes, because we knew that little girl could be our own.

And I know that every American wants her future to be just as bright. That's who we are. That's the country I'm so proud to lead as your president.

And tonight, despite all the hardship we've been through, despite all the frustrations of Washington, I've never been more hopeful about our future.

I have never been more hopeful about America. And I ask you to sustain that hope. I'm not talking about blind optimism, the kind of hope that just ignores the enormity of the tasks ahead or the roadblocks that stand in our path. I'm not talking about the wishful idealism that allows us to just sit on the sidelines or shirk from a fight.

I have always believed that hope is that stubborn thing inside us that insists, despite all the evidence to the contrary, that something better awaits us so long as we have the courage to keep reaching, to keep working, to keep fighting.

America, I believe we can build on the progress we've made and continue to fight for new jobs and new opportunity and new security for the middle class. I believe we can keep the promise of our founders, the idea that if you're willing to work hard, it doesn't matter who you are or where you come from or what you look like or where you love. It doesn't matter whether you're black or white or Hispanic or Asian or Native American or young or old or rich or poor, able, disabled, gay or straight, you can make it here in America if you're willing to try.

I believe we can seize this future together because we are not as divided as our politics suggests. We're not as cynical as the pundits believe. We are greater than the sum of our individual ambitions, and we remain more than a collection of red states and blue states. We are and forever will be the United States of America.

And together with your help and God's grace we will continue our journey forward and remind the world just why it is that we live in the greatest nation on Earth.

Thank you, America. God bless you. God bless these United States!"

bo = Artist.create!(name: "Barack Obama");
bo.songs.create!(title: "2012 Presidential Election Acceptance Speech", contents: acceptance, image: images[:obama], genre: news)
