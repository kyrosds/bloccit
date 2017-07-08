require 'random_data'

5.times do
    User.create!(
        name: RandomData.random_name,
        email: RandomData.random_email,
        password: RandomData.random_sentence
    )
end
users = User.all

15.times do
   Topic.create!(
       name: RandomData.random_sentence,
       description: RandomData.random_paragraph
    ) 
end
topics = Topic.all

50.times do
   SponsoredPost.create!(
        topic: topics.sample,
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph,
        price: rand(1..100)
    ) 
end

50.times do
    Post.create!(
        user: users.sample,
        topic: topics.sample,
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
    )
end

posts = Post.all

100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

100.times do
   Question.create!(
       title: RandomData.random_sentence,
       body: RandomData.random_paragraph,
       resolve: false
       ) 
end

#puts "#{Post.count}"
#Post.find_or_create_by!(title: "Hello", body: "This is the body",)
#puts "#{Post.count}"

#puts "#{Comment.count}"
#Comment.find_or_create_by!(body: "This is a comment body")
#puts "#{Comment.count}"

user = User.first
user.update_attributes!(
        email: 'd.sires@yahoo.com',
        password: 'helloworld'
    )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

puts "#{Question.count} questions created"