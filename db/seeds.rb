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

cat1 = Category.create(title: "Mental Health")
cat2 = Category.create(title: "General Health")
cat3 = Category.create(title: "Pediatrics")
cat4 = Category.create(title: "Sexual and Reprductive Health")
cat5 = Category.create(title: "Spiritual Health")
cat6 = Category.create(title: "Nutrition")
cat7 = Category.create(title: "Physical")
cat8 = Category.create(title: "Pregnancy & Postpartum")
cat9 = Category.create(title: "Coronavirus Support")

u1 = User.create(name: "Lauren Birts", email: "birtslauren@gmail.com", password: "iLovedogs12!", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 0)
c1 = Client.create(user: u1, dob: DateTime.strptime("07/31/1997", "%m/%d/%Y"))

u2 = User.create(name: "Dr. Olivia Brown", email: "obrown@gmail.com", password: "iLoveme@1", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 1)
p1 = Provider.create(user: u2, specialty: "Emotional Health", category: cat1, yearsofexp: 7, subspecialties: "Yoga, Creative Art Therapy, Sound Bowls")

u3 = User.create(name: "Dr. William Sitts", email: "test@test.com", password: "iLovedogs12!", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 1)
p2 = Provider.create(user: u3, specialty: "Chiropractor", category: cat2)

u4 = User.create(name: "Dr. Amanda Brogar", email: "test1@test.com", password: "iLovedogs12!", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 1,)
p3 = Provider.create(user: u4, specialty: "Gynecologist", category: cat4)

u5 = User.create(name: "Lindsey Thomas", email: "test2@test.com", password: "iLovedogs12!", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 1)
p4 = Provider.create(user: u5, specialty: "Nutritionist", category: cat6)

u6 = User.create(name: "Darius Johnson", email: "test3@test.com", password: "iLovedogs12!", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 1)
p5 = Provider.create(user: u6, specialty: "Herbal Healing", category: cat5)

u7 = User.create(name: "Elle", email: "test4@test.com", password: "iLovedogs12!", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 1)
p6 = Provider.create(user: u7, specialty: "Energetic Therapy", category: cat5)

u8 = User.create(name: "Jeremy Brown", email: "test5@test.com", password: "iLovedogs12!", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 0)
c2 = Client.create(user: u8, dob: DateTime.strptime("12/24/1995", "%m/%d/%Y"))

u9 = User.create(name: "Jace Johnson", email: "test6@test.com", password: "iLovedogs12!", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 0)
c3 = Client.create(user: u9, dob: DateTime.strptime("04/20/1993", "%m/%d/%Y"))

u10 = User.create(name: "Sara Davis", email: "test7@test.com", password: "iLovedogs12!", avatar: "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg", role: 0)
c4 = Client.create(user: u10, dob: DateTime.strptime("09/13/1992", "%m/%d/%Y"))

app1 = Appointment.create(date_time: DateTime.strptime("07/23/2020 13:30", "%m/%d/%Y %H:%M"), client: c1, provider: p1, notes: "My anxiety is taking over my life, I would like to talk about solutions and how to move past this.", status: "Completed")

post1 = Post.create(title: "Anxiety", content: "I have been having really bad anxiety lately, not sure how to move past this. I've tried everything from CBD to weight blankets, any suggestions?", category: cat1, client: c1)
com1 = Comment.create(content: "Meditation helps me get grounded, I have linked some beats to meditate too. In addition, let me know if you would like to schedule a one on one", post: post1, user: u2, anon: false)

post2 = Post.create(title: "Chest Pain", content: "I’ve been on vacation twice this month and I’ve been drinking quite a bit, but not enough to get myself drunk every night. Mainly just one mixed drink or glass of wine each night. Last night I actually had more than that, and I just woke up with the worst chest pain I’ve ever experienced. It feels sore and tight, and it feels worse if I try to lay down. I’ve had chest pain before after I drink but I thought those times were just acid reflux. This time it actually feels like my chest muscles hurt. I’m hoping this will go away eventually but I’m concerned I should see a doctor about this.", category: cat2, client: c3)
com2 = Comment.create(content: "Hi! Any type of unusual chest pain is concerning: the short answer is to definitely get seen in person by your provider so they can look at risk factors with you and do an in person exam, as well as run further tests, such as bloodwork and likely an EKG. They may even refer you to a cardiologist for more extensive evaluation after that, depending on your risks and initial findings. There are many reasons why someone can have chest pain, and it sounds as if alcohol may be a factor here. Sometimes people do experience gastritis as alcohol is a toxin and can erode/break down the lining of your throat, stomach, and intestines.", post: post2, user: u5, anon: false)

post3 = Post.create(title: "Looking for a long term therapsit", content: "Hello, I’m am currently looking for a therapist that I feel that understands me the most. I love using holLife for chatting and the community but I just cannot get with video or phone call therapist appointments. It gives me soo much anxiety and to really feel comfortable I have to be able to see you and feel your energies. I’ve been to 1 therapist in my entire life and I liked her a lot but since I do not have health insurance to cover mental health her prices are a little high. Should I just keep shopping around and making appointments to see if I like them or try to call and see what their specialities are?? I’m brand new to this psychology world and I’m so confused???", category: cat1, client: c4)
com3 = Comment.create(content: "This is a great question and I'm hoping in the few weeks you've posted it that you've found someone you like. It is totally ok to shop around and therapists should be ok with you trying them once or twice before you settle into therapy. During this time, you may have a hard time finding therapists doing in-person appointments, but they are out there. In the mean time, practioners on holLife are here for you, even if it's just a session or two while you feel us out. Good luck!", post: post3, user: u5, anon: false) 

ava1 = Availability.create(day: "Monday", time: "09:00:00-06", provider: p1)
ava2 = Availability.create(day: "Monday", time: "10:00:00-06", provider: p1)
ava3 = Availability.create(day: "Monday", time: "11:00:00-06", provider: p1)
ava4 = Availability.create(day: "Monday", time: "12:00:00-06", provider: p1)
ava5 = Availability.create(day: "Monday", time: "13:00:00-06", provider: p1)
ava6 = Availability.create(day: "Monday", time: "14:00:00-06", provider: p1)
ava7 = Availability.create(day: "Monday", time: "15:00:00-06", provider: p1)
ava8 = Availability.create(day: "Monday", time: "16:00:00-06", provider: p1)
