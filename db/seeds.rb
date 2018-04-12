require 'random_data'

15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all

50.times do

  Post.create!(
    topic:  topics.sample,
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

50.times do

  Question.create!(

    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
  )
end

50.times do

  Advertisement.create!(

    title: RandomData.random_sentence,
    copy: RandomData.random_paragraph,
    price: rand(1..1000)
  )
end

puts "Seed finished"
puts "#{Advertisement.count} created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} comments created"

  Post.find_or_create_by!(

    title: "Unique Title",
    body: "Unique Body"
  )

  Comment.find_or_create_by!(

    body: "Uniquer Body",
    post_id: new_post.id

  )
