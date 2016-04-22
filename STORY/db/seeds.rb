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
Story.create user_id: 1, beginning: 'Driving down the street'
Story.create user_id: 2, beginning: 'Eating lunch'
Story.create user_id: 4, beginning: 'Skipping classes on Friday'


# Make posts
Post.create content: '1st post of 1st story', user_id: 1, story_id: 1, success: true
Post.create content: '2nd post of 1st story', user_id: 2 story_id: 1, success: true
Post.create content: '1st potential post of 1st story', user_id: 3, vote: 1, story_id: 1, success: false
Post.create content: '2nd potential post of 1st story', user_id: 4, vote: 4, story_id: 1, success: false
Post.create content: '3rd potential post of 1st story', user_id: 1, vote: 5, story_id: 1, success: false

Post.create content: '1st post of 2nd story', user_id: 3, story_id: 2, success: true
Post.create content: '2nd post of 2nd story', user_id: 4, story_id: 2, success: true
Post.create content: '1st potential post of 2nd story', user_id: 3, story_id: 2, success: false
Post.create content: '2nd potential post of 2nd story', user_id: 4, story_id: 2, success: false
Post.create content: '3rd potential post of 2nd story', user_id: 1, story_id: 2, success: false

# Upvote some posts
Post.find(1).liked_by User.find(1), :vote_weight => 10
