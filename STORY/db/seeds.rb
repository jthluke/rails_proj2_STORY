# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Make users
User.create username: 'Leeren', email: 'leeren@berkeley.edu', password: '12345678', password_confirmation: '12345678', points:0
User.create username: 'Justin', email: 'justin@berkeley.edu', password: '12345678', password_confirmation: '12345678', points:0
User.create username: 'Iris', email: 'iris@berkeley.edu', password: '12345678', password_confirmation: '12345678', points:0
User.create username: 'Ian', email: 'ian@berkeley.edu', password: '12345678', password_confirmation: '12345678', points:0

# Make stories
Story.create user_id: 1, beginning: 'Driving down the street,', created_at: "2016-04-20 23:32:00", updated_at: "2016-04-20 23:32:00"
Story.create user_id: 2, beginning: 'I love eating lunch with', created_at: "2016-04-20 23:33:00", updated_at: "2016-04-20 23:33:00"
Story.create user_id: 3, beginning: 'Bobby fed his homework to his dog and said', created_at: "2016-04-20 23:34:00", updated_at: "2016-04-20 23:34:00"
Story.create user_id: 4, beginning: 'Skipping classes on Friday is', created_at: "2016-04-20 23:35:00", updated_at: "2016-04-20 23:35:00"

# Make Posts
Post.create content: 'in my red hot Ferrari, ', user_id: 3, story_id: 1, success: true, created_at: "2016-04-20 23:36:00", updated_at: "2016-04-20 23:36:00"
Post.create content: 'I was stuck in traffic on the way to hot yoga.', user_id: 2, story_id: 1, success: true, created_at: "2016-04-20 23:37:00", updated_at: "2016-04-20 23:37:00"
Post.create content: '"Argh, why so many cars!?"', user_id: 3, story_id: 1, success: false, created_at: "2016-04-20 23:38:00", updated_at: "2016-04-20 23:38:00"
Post.create content: '"If only I had a Batmobile", I thought to myself.', user_id: 4, story_id: 1, success: false, created_at: "2016-04-20 23:39:00", updated_at: "2016-04-20 23:39:00"
Post.create content: 'Suddenly, a zombie appeared!', user_id: 1, story_id: 1, success: false, created_at: "2016-04-20 23:40:00", updated_at: "2016-04-20 23:40:00"

Post.create content: 'my super hot friend.  His name is', user_id: 3, story_id: 2, success: true, created_at: "2016-04-20 23:41:00", updated_at: "2016-04-20 23:41:00"
Post.create content: 'JOHN CENA!!1', user_id:4, story_id: 2, success: true, created_at: "2016-04-20 23:42:00", updated_at: "2016-04-20 23:42:00"
Post.create content: 'He ordered a burger with fries.', user_id: 2, story_id: 2, success: false, created_at: "2016-04-20 23:43:00", updated_at: "2016-04-20 23:43:00"
Post.create content: 'We were at a romantic beachside cafe, when suddenly', user_id: 4, story_id: 2, success: false, created_at: "2016-04-20 23:44:00", updated_at: "2016-04-20 23:44:00"
Post.create content: '"r u single?", he asked.', user_id: 1, story_id: 2, success: false, created_at: "2016-04-20 23:45:00", updated_at: "2016-04-20 23:45:00"

Post.create content: '"HERE FIDO, SOME FOOD FOR THOUGHT!"', user_id: 1, story_id: 3, success: true, created_at: "2016-04-20 23:46:00", updated_at: "2016-04-20 23:46:00"
Post.create content: 'Fido got mad.  He went to beast mode and ', user_id:4, story_id: 3, success: true, created_at: "2016-04-20 23:47:00", updated_at: "2016-04-20 23:47:00"
Post.create content: 'displayed his dominance', user_id: 4, story_id: 3, success: false, created_at: "2016-04-20 23:48:00", updated_at: "2016-04-20 23:48:00"
Post.create content: 'took Bobby for a walk.', user_id: 2, story_id: 3, success: false, created_at: "2016-04-20 23:49:00", updated_at: "2016-04-20 23:49:00"
Post.create content: 'marked the homework as territory', user_id: 3, story_id: 3, success: false, created_at: "2016-04-20 23:50:00", updated_at: "2016-04-20 23:50:00"

Post.create content: 'good for your health, as recommended by 9/10 doctors.', user_id: 2, story_id: 4, success: true, created_at: "2016-04-20 23:51:00", updated_at: "2016-04-20 23:51:00"
Post.create content: 'Gotta beat the crowd to ', user_id:1, story_id: 4, success: true, created_at: "2016-04-20 23:52:00", updated_at: "2016-04-20 23:52:00"
Post.create content: 'the Justin Bieber concert.', user_id: 3, story_id: 4, success: false, created_at: "2016-04-20 23:53:00", updated_at: "2016-04-20 23:53:00"
Post.create content: 'FREE Chipotle!', user_id: 1, story_id: 4, success: false, created_at: "2016-04-20 23:54:00", updated_at: "2016-04-20 23:54:00"
Post.create content: 'asdfasdf', user_id: 2, story_id: 4, success: false, created_at: "2016-04-20 23:55:00", updated_at: "2016-04-20 23:55:00"

# Upvote some posts
Post.find(1).liked_by User.find(1), :vote_weight => 10
Story.find(1).liked_by User.find(2), :vote_weight => 10

