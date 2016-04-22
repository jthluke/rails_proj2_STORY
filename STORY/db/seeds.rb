# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Make users
User.create username: 'Leeren', email: 'leeren@berkeley.edu', password: '12345678', password_confirmation: '12345678'
User.create username: 'Justin', email: 'justin@berkeley.edu', password: '12345678', password_confirmation: '12345678'
User.create username: 'Iris', email: 'iris@berkeley.edu', password: '12345678', password_confirmation: '12345678'
User.create username: 'Ian', email: 'ian@berkeley.edu', password: '12345678', password_confirmation: '12345678'

# Make stories
Story.create user_id: 1, beginning: 'Driving down the street,'
Story.create user_id: 2, beginning: 'I love eating lunch with'
Story.create user_id: 3, beginning: 'Bobby fed his homework to his dog and said'
Story.create user_id: 4, beginning: 'Skipping classes on Friday is'


# Make Posts
Post.create content: 'in my red hot Ferrari, ', user_id: 3, vote: 10, story_id: 1, success: true
Post.create content: 'I was stuck in traffic on the way to hot yoga.', user_id: 2, vote: 10, story_id: 1, success: true
Post.create content: '"Argh, why so many cars!?"', user_id: 3, vote: 1, story_id: 1, success: false
Post.create content: '"If only I had a Batmobile", I thought to myself.', user_id: 4, vote: 4, story_id: 1, success: false
Post.create content: 'Suddenly, a zombie appeared!', user_id: 1, vote: 5, story_id: 1, success: false

Post.create content: 'my super hot friend.  His name is', user_id: 3, vote: 10, story_id: 2, success: true
Post.create content: 'JOHN CENA!!1', user_id:4, vote: 10, story_id: 2, success: true
Post.create content: 'He ordered a burger with fries.', user_id: 2, vote: 2, story_id: 2, success: false
Post.create content: 'We were at a romantic beachside cafe, when suddenly', user_id: 4, vote: 4, story_id: 2, success: false
Post.create content: '"r u single?", he asked.', user_id: 1, vote: 5, story_id: 2, success: false
