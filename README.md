# rails_proj2_STORY

Title: RailsDeCal 2016 Project 2:  STORY
Team Members: Leeren Chang, Iris Chen, Ian Lee, Justin Luke
Demo Link: https://www.dropbox.com/s/yk1yjh469k3b99z/Stories%20Screen%20Cast.mov?dl=0
Heroku Link: https://mysterious-beyond-93557.herokuapp.com/

Idea: An application where users can have fun collaboratively creating stories.

Models and Description:
User
has username, url, email, password, points, posts, stories

Story
has beginning, has score, and belongs to a User

Post
has content, has success, has score, belongs to a Story, and belongs to a User


Features:
Users can log in
Users can create Stories and Posts
Users can like, un-like, dislike, un-dislike Stories and Posts
Users can have points (compete with other Users)
Users can have a profile picture

Division of Labor:
Leeren: Made models, controllers, seed, point thresholds, screencast
Iris: Made upvote/downvote feature, user profile picture, seed, CSS, views
Ian: Made Post/Story controller functions, seed, points, CSS, Bootstrap
Justin: Made sorting feature, upvote/downvote calculations, validations, seed, CSS, Bootstrap, jQuery, Heroku

