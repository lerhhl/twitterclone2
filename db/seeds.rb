# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Clear database
Comment.delete_all
Topic.delete_all
User.delete_all


# Users - Create Admin
firstname = "Admin"
lastname = "Admin" 
usermame = "Admin"
email = "admin@admin.com"
ownstory = "about oneself"
User.create(first_name: firstname, last_name: lastname, username: username,
            email: email, password: 'password',
            password_confirmation: 'password',
            description: ownstory)

# Users - Random users
# 10.times do
#   firstname = Faker::Name.first_name
#   lastname = Faker::Name.last_name
#   username = Faker::Name.name
#   email = Faker::Internet.email
#   ownstory = Faker::HitchhikersGuideToTheGalaxy.quote
#   User.create(first_name: firstname, last_name: lastname, username: username,
#               email: email, password: 'password',
#               password_confirmation: 'password',
#               description: ownstory)
# end

# Tweets - Create Tweets
Tweet.create(body: Faker::HarryPotter.quote, user_id: User.first )
# 80.times do
#   body = Faker::HarryPotter.quote
#   offset = rand(User.count)
#   user_id = User.offset(offset).limit(1).first.id
#   Tweet.create(body: body, user_id: user_id)
# end

# Tags - Create Tags
# 50.times do
#   tagname = Faker::Color.color_name
#   if !Tag.exists?(:name => tagname)
#     Tag.create(:name => tagname)
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
