# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Client.destroy_all
Provider.destroy_all
Appointment.destroy_all
Category.destroy_all
Post.destroy_all
Comment.destroy_all

u1 = User.create(name: "Lauren Birts", email: "birtslauren@gmail.com", password: "iLovedogs12!", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 0)
c1 = Client.create(user: u1, dob: DateTime.strptime("07/31/1997", "%m/%d/%Y"))

u2 = User.create(name: "Dr. Olivia Brown", email: "obrown@gmail.com", password: "iLoveme@1", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 1)
p1 = Provider.create(user: u2, specialty: "Mental Health")

app1 = Appointment.create(date_time: DateTime.strptime("07/23/2020 13:30", "%m/%d/%Y %H:%M"), client: c1, provider: p1, notes: "My anxiety is taking over my life, I would like to talk about solutions and how to move past this.")

cat1 = Category.create(title: "Mental Health")

post1 = Post.create(title: "Anxiety", content: "I have been having really bad anxiety lately, not sure how to move past this. I've tried everything from CBD to weight blankets, any suggestions?", category: cat1, client: c1)
com1 = Comment.create(content: "Meditation help me get ground, I have linked some beats to meditate too. In addition, let me know if you would like to schedule a one on one", post: post1, user: u2)