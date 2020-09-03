# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

# users

simone = User.create(email: "user@example.com", password: "123ABC", name: "Simone Biles", age: "21", gender: "female", bio: "Hi, I am Simone. I have over 10 years of experience in gymnastics, yoga and calisthenics.", trainer: true)
puts simone.name
donny = User.create(email: "user2@example.com", password: "123ABC", name: "Donny Van De Beek", age: "71", gender: "male", bio: "Hi, I am Donny. I have over 50 years of experience in calisthenics, crossfit and outdoor bootcamps.", trainer: true)
puts donny.name
marieke = User.create(email: "user3@example.com", password: "123ABC", name: "Marieke Jansen", age: "21", gender: "female", trainer: false)
puts marieke.name
joop = User.create(email: "user4@example.com", password: "123ABC", name: "Joop Herema", age: "30", gender: "male", trainer: false)
puts joop.name

# user pics

simonepic = URI.open('https://cdn.amomama.com/4ac49f8ca916f956ce084fcc6d4afcf0.jpeg?width=3000&height=2452')
simone.photos.attach(io: simonepic, filename: 'simonepic.png', content_type: 'image/png')

donnypic = URI.open('https://i.imgur.com/LbDUJDk_d.webp?maxwidth=728&fidelity=grand')
donny.photos.attach(io: donnypic, filename: 'donnypic.png', content_type: 'image/png')

mariekepic = URI.open('https://www.vriendin.nl/content/uploads/2020/02/Ontwerp-zonder-titel-97-1.png')
marieke.photos.attach(io: mariekepic, filename: 'mariekepic.png', content_type: 'image/png')

jooppic = URI.open('https://thedutchman.travel/wp-content/uploads/2016/05/The-Dutchman-Holland-Netherlands-Travelagent-DMC-At-your-service-IMG_5300-300x225.jpg')
joop.photos.attach(io: jooppic, filename: 'jooppic.png', content_type: 'image/png')


# trainings

calisthenics1 = Training.create(name: "calisthenics for beginners", user_id: 1, description: "In this training, I will bring you up to speed with the core exercises in calisthenics")
puts calisthenics1.name
crossfit1 = Training.create(name: "crossfit for beginners", user_id: 2, description: "In this training, I will bring you up to speed with the core exercises in crossfit. Let's get fit")
puts crossfit1.name

# training pics
calisthenics1pic = URI.open('https://schoolofcalisthenics.com/wp-content/uploads/2018/07/2018-06-11-PHOTO-00000059.jpg')
calisthenics1.photos.attach(io: calisthenics1pic, filename: 'calisthenics1pic.png', content_type: 'image/png')

crossfit1pic = URI.open('https://assets.website-files.com/581c85345d7e0501760aa7db/5afaa69dd0d7b74b5e418453_justyn-warner-532065-unsplash-(1).jpg')
crossfit1.photos.attach(io: crossfit1pic, filename: 'crossfit1pic.png', content_type: 'image/png')


# new sessions
calisthenics_session1 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: DateTime.new(2020, 12, 8, 20, 0, 0, "+02:00") )
puts calisthenics_session1.id
calisthenics_session2 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: DateTime.new(2020, 12, 15, 20, 0, 0, "+02:00") )
puts calisthenics_session2.id
calisthenics_session3 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: DateTime.new(2020, 12, 22, 20, 0, 0, "+02:00") )
puts calisthenics_session3.id

crossfit_session1 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: DateTime.new(2020, 10, 8, 20, 0, 0, "+02:00") )
puts crossfit_session1.id
crossfit_session2 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: DateTime.new(2020, 10, 15, 20, 0, 0, "+02:00") )
puts crossfit_session2.id
crossfit_session3 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: DateTime.new(2020, 10, 22, 20, 0, 0, "+02:00") )
puts crossfit_session3.id

# old sessions
calisthenics_sessionLY1 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: DateTime.new(2019, 12, 8, 20, 0, 0, "+02:00") )
calisthenics_sessionLY2 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: DateTime.new(2019, 12, 15, 20, 0, 0, "+02:00") )
calisthenics_sessionLY3 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: DateTime.new(2019, 12, 22, 20, 0, 0, "+02:00") )

crossfit_sessionLY1 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: DateTime.new(2019, 10, 8, 20, 0, 0, "+02:00") )
crossfit_sessionLY2 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: DateTime.new(2019, 10, 15, 20, 0, 0, "+02:00") )
crossfit_sessionLY3 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: DateTime.new(2019, 10, 22, 20, 0, 0, "+02:00") )

# new bookings
bookingfuture1 = Booking.create!(user_id: 3, training_session_id: 1, status: true)
puts bookingfuture1.id
bookingfuture2 = Booking.create!(user_id: 3, training_session_id: 2, status: true)
puts bookingfuture2.id
bookingfuture3 = Booking.create(user_id: 3, training_session_id: 3, status: true)
puts bookingfuture3.id
bookingfuture4 = Booking.create(user_id: 3, training_session_id: 4, status: true)
puts bookingfuture4.id
bookingfuture5 = Booking.create(user_id: 3, training_session_id: 5, status: true)
puts bookingfuture5.id
bookingfuture6 = Booking.create(user_id: 3, training_session_id: 6, status: true)
puts bookingfuture6.id

bookingfuture7 = Booking.create(user_id: 4, training_session_id: 1, status: true)
bookingfuture8 = Booking.create(user_id: 4, training_session_id: 2, status: true)
bookingfuture9 = Booking.create(user_id: 4, training_session_id: 3, status: true)
bookingfuture10 = Booking.create(user_id: 4, training_session_id: 4, status: true)
bookingfuture11 = Booking.create(user_id: 4, training_session_id: 5, status: true)
bookingfuture12 = Booking.create(user_id: 4, training_session_id: 6, status: true)


# old bookings
bookingold1 = Booking.create(user_id: 3, training_session_id: 7, status: true)
bookingold2 = Booking.create(user_id: 3, training_session_id: 8, status: true)
bookingold3 = Booking.create(user_id: 3, training_session_id: 9, status: true)
bookingold4 = Booking.create(user_id: 3, training_session_id: 10, status: true)
bookingold5 = Booking.create(user_id: 3, training_session_id: 11, status: true)
bookingold6 = Booking.create(user_id: 3, training_session_id: 12, status: true)

bookingold7 = Booking.create(user_id: 4, training_session_id: 7, status: true)
bookingold8 = Booking.create(user_id: 4, training_session_id: 8, status: true)
bookingold9 = Booking.create(user_id: 4, training_session_id: 9, status: true)
bookingold10 = Booking.create(user_id: 4, training_session_id: 10, status: true)
bookingold11 = Booking.create(user_id: 4, training_session_id: 11, status: true)
bookingold12 = Booking.create(user_id: 4, training_session_id: 12, status: true)

# reviews

review1 = Review.create(title: "Great, would go again", description: "very impressive teacher, seems very experienced. Fun workout. Will go again", stars: 5, user_id: 3, booking_id: 1)
puts review1.title
review2 = Review.create(title: "Very fun", description: "Great workout, a bit too hard for me. I'll be back", stars: 4, user_id: 4, booking_id: 7)
puts review2.title
