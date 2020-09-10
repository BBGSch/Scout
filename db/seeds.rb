require "open-uri"

# trainer users
simone = User.create(email: "trainer1@example.com", password: "123ABC", name: "Simone Davis", age: "21", gender: "female", 
  bio: "Hi, I am Simone. I have over 10 years of experience in gymnastics, yoga and calisthenics.", trainer: true)
puts simone.name

donny = User.create(email: "trainer2@example.com", password: "123ABC", name: "Donny Beersma", age: "31", gender: "male", 
  bio: "Hi, I am Donny. I have over 20 years of experience in calisthenics, crossfit and outdoor bootcamps.", trainer: true)
puts donny.name

mark = User.create(email: "trainer3@example.com", password: "123ABC", name: "Mark Lee", age: "27", gender: "male", 
  bio: "Hi, I am Mark. I am specialized in endurance & strength training. Hit me up if you want to get fit!", trainer: true)
puts mark.name

sarah = User.create(email: "trainer4@example.com", password: "123ABC", name: "Sarah Ferguson", age: "32", gender: "female", 
  bio: "Hi, I am Sarah. I am specialized in high intensity training (HITT) & boxing. Hit me up if you want to get lean and mean!.", trainer: true)
puts sarah.name

# trainer pics
simonepic1 = URI.open('https://images.unsplash.com/photo-1566501206188-5dd0cf160a0e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
simone.photos.attach(io: simonepic1, filename: 'simonepic1.png', content_type: 'image/png')

simonepic2 = URI.open('https://images.unsplash.com/photo-1566501175014-8d7887b97914?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
simone.photos.attach(io: simonepic2, filename: 'simonepic2.png', content_type: 'image/png')

simonepic3 = URI.open('https://images.unsplash.com/photo-1547852356-b20668106c51?ixlib=rb-1.2.1&auto=format&fit=crop&w=2400&q=3000')
simone.photos.attach(io: simonepic3, filename: 'simonepic3.png', content_type: 'image/png')

donnypic = URI.open('https://images.unsplash.com/photo-1579046758287-7b35f5791790?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
donny.photos.attach(io: donnypic, filename: 'donnypic.png', content_type: 'image/png')

markpic = URI.open('https://images.unsplash.com/photo-1542327897-d73f4005b533?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
mark.photos.attach(io: markpic, filename: 'markpic.png', content_type: 'image/png')

sarahpic = URI.open('https://images.unsplash.com/photo-1595884108351-cad211d4c445?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
sarah.photos.attach(io: sarahpic, filename: 'sarahpic.png', content_type: 'image/png')

# participant users
marieke = User.create(email: "user5@example.com", password: "123ABC", name: "Marieke Jansen", age: "21", gender: "female", trainer: false)
puts marieke.name
joop = User.create(email: "user6@example.com", password: "123ABC", name: "Joop Herema", age: "30", gender: "male", trainer: false)
puts joop.name

dora = User.create(email: "user7@example.com", password: "123ABC", name: "Dora Hilton", age: "25", gender: "female", trainer: false)
puts dora.name
jake = User.create(email: "user8@example.com", password: "123ABC", name: "Jake Jackson", age: "35", gender: "male", trainer: false)
puts jake.name

anna = User.create(email: "user9@example.com", password: "123ABC", name: "Anna Cortez", age: "25", gender: "female", trainer: false)
puts anna.name
david = User.create(email: "user10@example.com", password: "123ABC", name: "David Young", age: "35", gender: "male", trainer: false)
puts david.name

dave = User.create(email: "user11@example.com", password: "123ABC", name: "Dave Harris", age: "25", gender: "female", trainer: false)
puts dave.name
sofia = User.create(email: "user12@example.com", password: "123ABC", name: "Sofia Herrera", age: "35", gender: "male", trainer: false)
puts sofia.name

# participant pics
mariekepic = URI.open('https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
marieke.photos.attach(io: mariekepic, filename: 'mariekepic.png', content_type: 'image/png')

jooppic = URI.open('https://images.unsplash.com/photo-1584799235813-aaf50775698c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
joop.photos.attach(io: jooppic, filename: 'jooppic.png', content_type: 'image/png')

dorapic = URI.open('https://images.unsplash.com/photo-1551854590-dc9c6265b1b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
dora.photos.attach(io: dorapic, filename: 'dorapic.png', content_type: 'image/png')

jakepic = URI.open('https://images.unsplash.com/photo-1563122870-6b0b48a0af09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
jake.photos.attach(io: jakepic, filename: 'jakepic.png', content_type: 'image/png')

annapic = URI.open('https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&auto=format&fit=crop&w=2400&q=300')
anna.photos.attach(io: annapic, filename: 'annapic.png', content_type: 'image/png')

davidpic = URI.open('https://images.unsplash.com/photo-1479685894911-37e888d38f0a?ixlib=rb-1.2.1&auto=format&fit=crop&w=2400&q=300')
david.photos.attach(io: davidpic, filename: 'davidpic.png', content_type: 'image/png')

davepic = URI.open('https://images.unsplash.com/photo-1482961674540-0b0e8363a005?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
dave.photos.attach(io: davepic, filename: 'davepic.png', content_type: 'image/png')

sofiapic = URI.open('https://images.unsplash.com/photo-1530047198515-516ff90fc4d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
sofia.photos.attach(io: sofiapic, filename: 'sofiapic.png', content_type: 'image/png')

# trainings
calisthenics1 = Training.create(name: "calisthenics for beginners", user_id: 1,
  description: "In this training, I will bring you up to speed with the core exercises in calisthenics",
  price: 10, duration: DateTime.new(2020,9,19,1,00,0, "+00:00"), category: "calisthenics")
puts calisthenics1.name
crossfit1 = Training.create(name: "crossfit for beginners", user_id: 2,
  description: "In this training, I will bring you up to speed with the core exercises in crossfit. Let's get fit",
  price: 15, duration: DateTime.new(2020,9,21,1,30,0, "+00:00"), category: "crossfit")
puts crossfit1.name
boxing1 = Training.create(name: "boxing for beginners", user_id: 4,
  description: "In this training, I will bring you up to speed with the core exercises in boxing. Let's get fit",
  price: 12, duration: DateTime.new(2020,9,23,1,30,0, "+00:00"), category: "boxing")
puts boxing1.name
hitt1 = Training.create(name: "HITT for beginners", user_id: 4,
  description: "In this training, I will bring you up to speed with the core exercises in HITT. Let's get fit",
  price: 15, duration: DateTime.new(2020,9,25,1,00,0, "+00:00"), category: "HITT")
puts hitt1.name
endurance1 = Training.create(name: "endurance training for beginners", user_id: 3,
  description: "In this training, I will bring you up to speed with the core exercises in endurance training. Let's get fit",
  price: 10, duration: DateTime.new(2020,9,27,1,30,0, "+00:00"), category: "endurance")
puts endurance1.name
strength1 = Training.create(name: "strength training for beginners", user_id: 3,
  description: "In this training, I will bring you up to speed with the core exercises in strength training. Let's get fit",
  price: 15, duration: DateTime.new(2020,9,29,1,00,0, "+00:00"), category: "strength")
puts strength1.name
yoga1 = Training.create(name: "yoga for beginners", user_id: 1,
  description: "In this training, I will bring you up to speed with the core exercises in yoga. Let's get fit",
  price: 12, duration: DateTime.new(2020,9,17,1,00,0, "+00:00"), category: "yoga")
puts yoga1.name

# training pics
calisthenics1pic1 = URI.open('https://images.unsplash.com/photo-1597347316205-36f6c451902a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
calisthenics1.photos.attach(io: calisthenics1pic1, filename: 'calisthenics1pic1.png', content_type: 'image/png')

calisthenics1pic2 = URI.open('https://images.unsplash.com/photo-1516208398649-d5d401ba8c49?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
calisthenics1.photos.attach(io: calisthenics1pic2, filename: 'calisthenics1pic2.png', content_type: 'image/png')

calisthenics1pic3 = URI.open('https://images.unsplash.com/photo-1562031610-cd6d17dffb7a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=80')
calisthenics1.photos.attach(io: calisthenics1pic3, filename: 'calisthenics1pic3.png', content_type: 'image/png')

calisthenics1pic4 = URI.open('https://images.unsplash.com/photo-1516208813382-cbaf53501037?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=80')
calisthenics1.photos.attach(io: calisthenics1pic4, filename: 'calisthenics1pic4.png', content_type: 'image/png')

crossfit1pic = URI.open('https://images.unsplash.com/photo-1599058918144-1ffabb6ab9a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
crossfit1.photos.attach(io: crossfit1pic, filename: 'crossfit1pic.png', content_type: 'image/png')
# ADJUST
boxing1pic = URI.open('https://images.unsplash.com/photo-1593352216923-dd279c825ab0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=80')
boxing1.photos.attach(io: boxing1pic, filename: 'boxing1pic.png', content_type: 'image/png')

hitt1pic = URI.open('https://images.unsplash.com/photo-1544216428-3d4ad849ae40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
hitt1.photos.attach(io: hitt1pic, filename: 'hitt1pic.png', content_type: 'image/png')

endurance1pic = URI.open('https://images.unsplash.com/photo-1483721310020-03333e577078?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
endurance1.photos.attach(io: endurance1pic, filename: 'endurance1pic.png', content_type: 'image/png')

strength1pic = URI.open('https://images.unsplash.com/photo-1526403646408-57b94dc15399?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
strength1.photos.attach(io: strength1pic, filename: 'strength1pic.png', content_type: 'image/png')

yoga1pic = URI.open('https://images.unsplash.com/photo-1545205597-3d9d02c29597?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2400&q=300')
yoga1.photos.attach(io: yoga1pic, filename: 'yoga1pic.png', content_type: 'image/png')


# new sessions
calisthenics_session1 = TrainingSession.create(training_id: 1, price: calisthenics1.price, capacity: 10, location: "Westerpark", 
  time: DateTime.new(2020, 12, 8, 20, 0, 0, "+02:00") )
puts calisthenics_session1.id
calisthenics_session2 = TrainingSession.create(training_id: 1, price: calisthenics1.price, capacity: 10, location: "Westerpark", 
  time: DateTime.new(2020, 12, 15, 20, 0, 0, "+02:00") )
puts calisthenics_session2.id
calisthenics_session3 = TrainingSession.create(training_id: 1, price: calisthenics1.price, capacity: 10, location: "Westerpark", 
  time: DateTime.new(2020, 12, 22, 20, 0, 0, "+02:00") )
puts calisthenics_session3.id

crossfit_session1 = TrainingSession.create(training_id: 2, price: crossfit1.price, capacity: 6, location: "Vondelpark", 
  time: DateTime.new(2020, 10, 8, 20, 0, 0, "+02:00") )
puts crossfit_session1.id
crossfit_session2 = TrainingSession.create(training_id: 2, price: crossfit1.price, capacity: 6, location: "Vondelpark", 
  time: DateTime.new(2020, 10, 15, 20, 0, 0, "+02:00") )
puts crossfit_session2.id
crossfit_session3 = TrainingSession.create(training_id: 2, price: crossfit1.price, capacity: 6, location: "Vondelpark", 
  time: DateTime.new(2020, 10, 22, 20, 0, 0, "+02:00") )
puts crossfit_session3.id

boxing_session1 = TrainingSession.create(training_id: 3, price: boxing1.price, capacity: 6, location: "Rembrandtpark", 
  time: DateTime.new(2020, 10, 9, 20, 0, 0, "+02:00") )
puts boxing_session1.id
boxing_session2 = TrainingSession.create(training_id: 3, price: boxing1.price, capacity: 6, location: "Rembrandtpark", 
  time: DateTime.new(2020, 10, 16, 20, 0, 0, "+02:00") )
puts boxing_session2.id
boxing_session3 = TrainingSession.create(training_id: 3, price: boxing1.price, capacity: 6, location: "Rembrandtpark", 
  time: DateTime.new(2020, 10, 23, 20, 0, 0, "+02:00") )
puts boxing_session3.id

hitt_session1 = TrainingSession.create(training_id: 4, price: hitt1.price, capacity: 6, location: "Erasmuspark", 
  time: DateTime.new(2020, 10, 10, 20, 0, 0, "+02:00") )
puts hitt_session1.id
hitt_session2 = TrainingSession.create(training_id: 4, price: hitt1.price, capacity: 6, location: "Erasmuspark", 
  time: DateTime.new(2020, 10, 17, 20, 0, 0, "+02:00") )
puts hitt_session2.id
hitt_session3 = TrainingSession.create(training_id: 4, price: hitt1.price, capacity: 6, location: "Erasmuspark", 
  time: DateTime.new(2020, 10, 24, 20, 0, 0, "+02:00") )
puts hitt_session3.id

endurance_session1 = TrainingSession.create(training_id: 5, price: endurance1.price, capacity: 6, location: "Sarphatipark", 
  time: DateTime.new(2020, 10, 11, 20, 0, 0, "+02:00") )
puts endurance_session1.id
endurance_session2 = TrainingSession.create(training_id: 5, price: endurance1.price, capacity: 6, location: "Sarphatipark", 
  time: DateTime.new(2020, 10, 18, 20, 0, 0, "+02:00") )
puts endurance_session2.id
endurance_session3 = TrainingSession.create(training_id: 5, price: endurance1.price, capacity: 6, location: "Sarphatipark", 
  time: DateTime.new(2020, 10, 25, 20, 0, 0, "+02:00") )
puts endurance_session3.id

strength_session1 = TrainingSession.create(training_id: 6, price: strength1.price, capacity: 6, location: "Oosterpark", 
  time: DateTime.new(2020, 10, 12, 20, 0, 0, "+02:00") )
puts strength_session1.id
strength_session2 = TrainingSession.create(training_id: 6, price: strength1.price, capacity: 6, location: "Oosterpark", 
  time: DateTime.new(2020, 10, 19, 20, 0, 0, "+02:00") )
puts strength_session2.id
strength_session3 = TrainingSession.create(training_id: 6, price: strength1.price, capacity: 6, location: "Oosterpark", 
  time: DateTime.new(2020, 10, 26, 20, 0, 0, "+02:00") )
puts strength_session3.id

yoga_session1 = TrainingSession.create(training_id: 7, price: yoga1.price, capacity: 6, location: "Beatrixpark", 
  time: DateTime.new(2020, 10, 13, 20, 0, 0, "+02:00") )
puts yoga_session1.id
yoga_session2 = TrainingSession.create(training_id: 7, price: yoga1.price, capacity: 6, location: "Beatrixpark", 
  time: DateTime.new(2020, 10, 20, 20, 0, 0, "+02:00") )
puts yoga_session2.id
yoga_session3 = TrainingSession.create(training_id: 7, price: yoga1.price, capacity: 6, location: "Beatrixpark", 
  time: DateTime.new(2020, 10, 27, 20, 0, 0, "+02:00") )
puts yoga_session3.id


# old sessions
calisthenics_sessionLY1 = TrainingSession.create(training_id: 1, price: calisthenics1.price, capacity: 10, location: "Westerpark", 
  time: DateTime.new(2020, 8, 8, 20, 0, 0, "+02:00") )
calisthenics_sessionLY2 = TrainingSession.create(training_id: 1, price: calisthenics1.price, capacity: 10, location: "Westerpark", 
  time: DateTime.new(2020, 8, 15, 20, 0, 0, "+02:00") )
calisthenics_sessionLY3 = TrainingSession.create(training_id: 1, price: calisthenics1.price, capacity: 10, location: "Westerpark", 
  time: DateTime.new(2020, 8, 22, 20, 0, 0, "+02:00") )

crossfit_sessionLY1 = TrainingSession.create(training_id: 2, price: crossfit1.price, capacity: 6, location: "Vondelpark", 
  time: DateTime.new(2020, 8, 8, 20, 0, 0, "+02:00") )
crossfit_sessionLY2 = TrainingSession.create(training_id: 2, price: crossfit1.price, capacity: 6, location: "Vondelpark", 
  time: DateTime.new(2020, 8, 15, 20, 0, 0, "+02:00") )
crossfit_sessionLY3 = TrainingSession.create(training_id: 2, price: crossfit1.price, capacity: 6, location: "Vondelpark", 
  time: DateTime.new(2020, 8, 22, 20, 0, 0, "+02:00") )

# new bookings

# user5
bookingfuture1 = Booking.create!(user_id: 5, training_session_id: 1, status: true)
puts bookingfuture1.id

bookingfuture2 = Booking.create!(user_id: 5, training_session_id: 2, status: true)
puts bookingfuture2.id
bookingfuture3 = Booking.create(user_id: 5, training_session_id: 3, status: true)
puts bookingfuture3.id
bookingfuture4 = Booking.create(user_id: 5, training_session_id: 4, status: true)
puts bookingfuture4.id
bookingfuture5 = Booking.create(user_id: 5, training_session_id: 5, status: true)
puts bookingfuture5.id
bookingfuture6 = Booking.create(user_id: 5, training_session_id: 6, status: true)
puts bookingfuture6.id
# user6
bookingfuture7 = Booking.create(user_id: 6, training_session_id: 1, status: true)
puts bookingfuture7.id
bookingfuture8 = Booking.create(user_id: 6, training_session_id: 2, status: true)
puts bookingfuture8.id
bookingfuture9 = Booking.create(user_id: 6, training_session_id: 3, status: true)
puts bookingfuture9.id
bookingfuture10 = Booking.create(user_id: 6, training_session_id: 4, status: true)
puts bookingfuture10.id
bookingfuture11 = Booking.create(user_id: 6, training_session_id: 5, status: true)
puts bookingfuture11.id
bookingfuture12 = Booking.create(user_id: 6, training_session_id: 6, status: true)
puts bookingfuture12.id

# calisthenics
bookingfuture13 = Booking.create(user_id: 7, training_session_id: 1, status: true)
puts bookingfuture13.id
bookingfuture14 = Booking.create(user_id: 8, training_session_id: 1, status: true)
puts bookingfuture14.id
bookingfuture15 = Booking.create(user_id: 9, training_session_id: 1, status: true)
puts bookingfuture15.id
bookingfuture16 = Booking.create(user_id: 10, training_session_id: 1, status: true)
puts bookingfuture16.id
bookingfuture17 = Booking.create(user_id: 11, training_session_id: 1, status: true)
puts bookingfuture17.id
bookingfuture18 = Booking.create(user_id: 12, training_session_id: 1, status: true)
puts bookingfuture18.id

# old bookings
# user5
bookingold1 = Booking.create(user_id: 5, training_session_id: 7, status: true)
bookingold2 = Booking.create(user_id: 5, training_session_id: 8, status: true)
bookingold3 = Booking.create(user_id: 5, training_session_id: 9, status: true)
bookingold4 = Booking.create(user_id: 5, training_session_id: 10, status: true)
bookingold5 = Booking.create(user_id: 5, training_session_id: 11, status: true)
bookingold6 = Booking.create(user_id: 5, training_session_id: 12, status: true)
# user6
bookingold7 = Booking.create(user_id: 6, training_session_id: 7, status: true)
bookingold8 = Booking.create(user_id: 6, training_session_id: 8, status: true)
bookingold9 = Booking.create(user_id: 6, training_session_id: 9, status: true)
bookingold10 = Booking.create(user_id: 6, training_session_id: 10, status: true)
bookingold11 = Booking.create(user_id: 6, training_session_id: 11, status: true)
bookingold12 = Booking.create(user_id: 6, training_session_id: 12, status: true)
# calisthenics
bookingold13 = Booking.create(user_id: 7, training_session_id: 7, status: true)
bookingold14 = Booking.create(user_id: 8, training_session_id: 7, status: true)

# reviews
# calisthenics
review1 = Review.create(title: "Great, would go again", description: "very impressive teacher, seems very experienced. Fun workout. Will go again", 
  stars: 5, user_id: 5, booking_id: 1)
puts review1.title
review2 = Review.create(title: "Great workout", description: "Great workout, a bit too hard for me. I'll be back", 
  stars: 4, user_id: 6, booking_id: 7)
puts review2.title
review3 = Review.create(title: "Lots of fun!", description: "Lots of fun! Teacher clearly knows her stuff. Highly recommended", 
  stars: 5, user_id: 7, booking_id: 13)
puts review3.title
review4 = Review.create(title: "Fantastic teacher", description: "Fantastic teacher, helps you get up to speed quickly", 
  stars: 4, user_id: 8, booking_id: 14)
puts review4.title

# user 5
review5 = Review.create(title: "Great, would go again", description: "very intense and fun workout. Will go again", 
  stars: 5, user_id: 5, booking_id: 4)
puts review5.title
# user 6
review6 = Review.create(title: "Very fun", description: "Enjoyable workout, you feel your muscles burning. I'll be back", 
  stars: 4, user_id: 6, booking_id: 10)
puts review6.title
