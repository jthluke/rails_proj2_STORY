# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Make users
%w(Leeren@b, Justin@b, Iris@b, Ian@b).each do |email|
  User.create name: name, email: email, password: '123456', password_confirmation: '123456'

# Make stories
Story.create votes: 50, user_id: 1, beginning: 'Driving down the street'
Story.create votes: 30, user_id: 2, beginning: 'Eating lunch'
Story.create votes: 21, user_id: 4, beginning: 'Skipping classes on Friday'


# Make Posts
Post.create content: '1st post of 1st story', user_id: 1, votes: 10, success: true, story_id: 1
Post.create content: '2st post of 1st story', user_id: 2, votes: 10, success: true, story_id: 1
Post.create content: '1st potential post of 1st story', user_id: 3, votes: 6, success: false, story_id: 1
Post.create content: '2nd potential post of 1st story', user_id: 4, votes: 4, success: false, story_id: 1
Post.create content: '3rd potential post of 1st story', user_id: 1, votes: 5, success: false, story_id: 1

Post.create content: '1st post of 2nd story', user_id: 3, votes: 10, success: true, story_id: 1
Post.create content: '2st post of 2nd story', user_id: 4, votes: 10, success: true, story_id: 1
Post.create content: '1st potential post of 2nd story', user_id: 3, votes: 9, success: false, story_id: 1
Post.create content: '2nd potential post of 2nd story', user_id: 4, votes: 4, success: false, story_id: 1
Post.create content: '3rd potential post of 2nd story', user_id: 1, votes: 5, success: false, story_id: 1
