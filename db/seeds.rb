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
arnold = User.create(email: "user2@example.com", password: "123ABC", name: "Arnold Schwarzenegger", age: "71", gender: "male", bio: "Hi, I am Arnold. I have over 50 years of experience in calisthenics, crossfit and outdoor bootcamps.", trainer: true)
puts arnold.name
marieke = User.create(email: "user3@example.com", password: "123ABC", name: "Marieke Jansen", age: "21", gender: "female", trainer: false)
puts marieke.name
joop = User.create(email: "user4@example.com", password: "123ABC", name: "Joop Herema", age: "30", gender: "male", trainer: false)
puts joop.name

# trainings

calisthenics1 = Training.create(name: "calisthenics for beginners", user_id: 1, description: "In this training, I will bring you up to speed with the core exercises in calisthenics")
puts calisthenics1.name
crossfit1 = Training.create(name: "crossfit for beginners", user_id: 2, description: "In this training, I will bring you up to speed with the core exercises in crossfit. Let's get fit")
puts crossfit1.name

# new sessions
calisthenics_session1 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: Time.new(2020, 12, 8, 20, 0, 0) )
puts calisthenics_session1.id
calisthenics_session2 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: Time.new(2020, 12, 15, 20, 0, 0) )
puts calisthenics_session2.id
calisthenics_session3 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: Time.new(2020, 12, 22, 20, 0, 0) )
puts calisthenics_session3.id

crossfit_session1 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: Time.new(2020, 10, 8, 20, 0, 0) )
puts crossfit_session1.id
crossfit_session2 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: Time.new(2020, 10, 15, 20, 0, 0) )
puts crossfit_session2.id
crossfit_session3 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: Time.new(2020, 10, 22, 20, 0, 0) )
puts crossfit_session3.id

# old sessions
calisthenics_sessionLY1 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: Time.new(2019, 12, 8, 20, 0, 0) )
calisthenics_sessionLY2 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: Time.new(2019, 12, 15, 20, 0, 0) )
calisthenics_sessionLY3 = TrainingSession.create(training_id: 1, capacity: 10, location: "Westerpark", time: Time.new(2019, 12, 22, 20, 0, 0) )

crossfit_sessionLY1 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: Time.new(2019, 10, 8, 20, 0, 0) )
crossfit_sessionLY2 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: Time.new(2019, 10, 15, 20, 0, 0) )
crossfit_sessionLY3 = TrainingSession.create(training_id: 2, capacity: 6, location: "Vondelpark", time: Time.new(2019, 10, 22, 20, 0, 0) )

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
