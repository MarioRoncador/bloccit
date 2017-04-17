require 'random_data'

# Create Users
5.times do
  User.create!(
# #3
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

# Create Topics
15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all

 # Create Posts
 50.times do
 # #1
  Post.create!(
    user:   users.sample,
    topic: topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
   )
 end


  Post.find_or_create_by(title: "Favorite Vacation", body:"Where's your favorite vacation spot? Mine is Colorado!")

 posts = Post.all

 # Create Comments
 # #3
 100.times do
   Comment.create!(
     user: users.sample,
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

#Create questions

100.times do
  Question.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph,
  resolved: false
  )
end

50.times do
# #1
 SponsoredPost.create!(
# #2
   topic: topics.sample,
   title:  RandomData.random_sentence,
    body:  RandomData.random_paragraph,
  )
end

admin = User.create!(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',
  role:     'admin'
)

member = User.create!(
  name:     'Member User',
  email:    'member@example.com',
  password: 'helloworld'
)

member = User.create!(
  name:     'Moderator User',
  email:    'm@e.com',
  password: '12345678',
  role: 'moderator'
)


 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{SponsoredPost.count} sponsored posts created"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} quesitons created"
