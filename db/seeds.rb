# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Clear database
#Tag.delete_all
#Tweet.delete_all
#User.delete_all


# Users - Create Admin
User.find_or_create_by(first_name: "Admin") do |user|
  user.first_name = "Admin"
  user.last_name = "Joe"
  user.username = "Admin"
  user.email = "admin@admin.com"
  user.description = "about oneself"
  user.password = "password"
  user.password_confirmation = "password"
end

# Users - Random users
user_count = 10
if User.count < user_count
  (user_count - User.count).times do
    firstname = Faker::Name.first_name
    lastname = Faker::Name.last_name
    username = Faker::Name.name
    email = Faker::Internet.email
    ownstory = Faker::HarryPotter.quote
    User.create(first_name: firstname, last_name: lastname, username: username,
                email: email, password: 'password',
                password_confirmation: 'password',
                description: ownstory)
  end
end

# Tweets - Create Tweets
tweet_count = 100
if Tweet.count < tweet_count
  (tweet_count - Tweet.count).times do
    body = Faker::HarryPotter.quote
    offset = rand(User.count)
    user_id = User.offset(offset).limit(1).first.id
    Tweet.create(body: body, user_id: user_id)
  end
end

# Tags - Create Tags
# tag_count = 30
# if Tag.count < tag_count
#   (tag_count - Tag.count).times do
#     tagname = Faker::HarryPotter.character
#     if !Tag.exists?(:name => tagname)
#       Tag.create(:name => tagname)
#     end
#   end
# end

# TweetTag - to link Tweets with Tags
# 10.times do
#   offset = rand(Tweet.count)
#   chosen_tweet = Tweet.offset(offset).limit(1).first
#   offset = rand(Tag.count)
#   chosen_tag = Tag.offset(offset).limit(1).first
#   if chosen_tweet.tags.exists?(:id => chosen_tag.id)
#   else
#     TweetTag.create(:tag_id => chosen_tag.id , :tweet_id => chosen_topic.id)
#   end
# end


# Follow - follow table


# Share - Share table


# Messages - Message table
