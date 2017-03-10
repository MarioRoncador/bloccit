require 'random_data'

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
 # #2
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
 # #4
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


 puts "Seed finished"
 puts "#{SponsoredPost.count} sponsored posts created"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} quesitons created"
