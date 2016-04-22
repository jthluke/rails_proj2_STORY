# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Make users
User.create email: 'leeren@berkeley.edu', password: '12345678', password_confirmation: '12345678', points:0
User.create email: 'justin@berkeley.edu', password: '12345678', password_confirmation: '12345678', points:0
User.create email: 'iris@berkeley.edu', password: '12345678', password_confirmation: '12345678', points:0
User.create email: 'ian@berkeley.edu', password: '12345678', password_confirmation: '12345678', points:0

# Make stories
Story.create vote: 19, user_id: 1, beginning: 'Driving down the street'
Story.create vote: 30, user_id: 2, beginning: 'Eating lunch'
Story.create vote: 21, user_id: 4, beginning: 'Skipping classes on Friday'


# Make Posts
Post.create content: '1st post of 1st story', user_id: 1, vote: 10, story_id: 1, success: true
Post.create content: '2nd post of 1st story', user_id: 2, vote: 10, story_id: 1, success: true
Post.create content: '1st potential post of 1st story', user_id: 3, vote: 1, story_id: 1, success: false
Post.create content: '2nd potential post of 1st story', user_id: 4, vote: 4, story_id: 1, success: false
Post.create content: '3rd potential post of 1st story', user_id: 1, vote: 5, story_id: 1, success: false

Post.create content: '1st post of 2nd story', user_id: 3, vote: 10, story_id: 2, success: true
Post.create content: '2nd post of 2nd story', user_id: 4, vote: 10, story_id: 2, success: true
Post.create content: '1st potential post of 2nd story', user_id: 3, vote: 2, story_id: 2, success: false
Post.create content: '2nd potential post of 2nd story', user_id: 4, vote: 4, story_id: 2, success: false
Post.create content: '3rd potential post of 2nd story', user_id: 1, vote: 5, story_id: 2, success: false

# 1.upto(100) do |i|
#    Vote.create votable_id: 1, votable_type: 'Post'
# end

# create_table "votes", force: :cascade do |t|
#   t.integer  "votable_id"
#   t.string   "votable_type"
#   t.integer  "voter_id"
#   t.string   "voter_type"
#   t.boolean  "vote_flag"
#   t.string   "vote_scope"
#   t.integer  "vote_weight"
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end
